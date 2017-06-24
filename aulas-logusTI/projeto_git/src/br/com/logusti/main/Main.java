package br.com.logusti.main;

import br.com.logusti.model.Cachorro;
import br.com.logusti.model.Carro;

public class Main {

	public static void main(String[] args) {

		// alt + shift + a

		Cachorro scoobyDoo = new Cachorro();
		scoobyDoo.nome = "ScoobyDoo";
		scoobyDoo.idade = 5;
		scoobyDoo.idade = new Integer(5);
		System.out.println(scoobyDoo.nome);

		Carro fiat = new Carro();
		fiat.nome = "Uno";
		fiat.marca = "Fiat";
		fiat.modelo = "Way";
		
		Carro gol = new Carro();
		gol.nome = "Gol";
		gol.marca = "Volks";
		gol.modelo = "rally";
		

		fiat.acelerar();
		fiat.virarADireita();
		fiat.virarAEsquerda();
		fiat.frear();
		
		gol.acelerar();
		gol.virarADireita();
		gol.virarAEsquerda();
		gol.frear();
		
		
		
		
	}

}
