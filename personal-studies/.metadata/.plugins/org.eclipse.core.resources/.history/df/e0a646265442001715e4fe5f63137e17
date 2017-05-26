angular.module('alurapic').controller('FotosController', function($scope, $resource, $routeParams){
    
    var recursoFoto = $resource('/v1/fotos/:fotoId', null,{
        'update' : {
            method: 'PUT'
        }
    });
    
    $scope.fotos = [];
    $scope.foto = {};
    $scope.filtro = '';
    $scope.mensagem = '';
    
    recursoFoto.query(function(fotos){
        $scope.fotos = fotos;
    }, function(erro){
        console.log(erro);
    });
    
    /*$http.get('v1/fotos')
    .then(function(retorno){
       $scope.fotos = retorno.data; 
    }).catch(function(erro){
       console.log(erro); 
    });*/
    
    
    if($routeParams.fotoId){
        recursoFoto.get({fotoId: $routeParams.fotoId}, function(foto){
            $scope.foto = foto;            
        }, function(erro){
            console.log(erro);
            $scope.mensagem = "Foto não encontrada.";
        });
    };
    
     /* INICIO DO SALVAR/ALTERAR*/
    $scope.salvar = function(){
        if($scope.formulario.$valid){
            
            if($routeParams.fotoId){
                
                recursoFoto.update( {fotoId: $scope.foto._id},
                    $scope.foto, function(){
                        $scope.mensagem = "Foto alterada com sucesso";
                    }, function(erro){
                        console.log(erro);
                        $scope.mensagem = "Não foi possível alterar a foto";
                });
                                    
            } else {
                recursoFoto.save($scope.foto, function(){
                    $scope.foto = {};
                    $scope.mensagem = "Foto cadastrada com sucesso!";
                }, function(erro){
                    console.log(erro);
                    $scope.mensagem = "Não foi possível cadastrar a foto!";
                });
            };
        };  /* FIM VALIDAR FORMULARIO*/
    }; /* FIM DO SALVAR/ALTERAR */
    
     /* INICIO DO REMOVER*/
    $scope.remover = function(foto){
        recursoFoto.delete({fotoId: foto._id}, function(){
            var indiceFoto = $scope.fotos.indexOf(foto);
            $scope.fotos.splice(indiceFoto, 1);
            $scope.mensagem = "Foto removida com sucesso!";                        
        }, function(erro){
            console.log(erro);
            $scope.mensagem = "Não foi possível remover a foto ";
        });
    }; /* FIM DO REMOVER*/
    
});