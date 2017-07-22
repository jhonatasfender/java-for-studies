import java.util.HashSet;
import java.util.Set;

public class ColecoesSet {
	public static void main(String[] args) {
		Set<String> sets = new HashSet<>();
		sets.add("12");
		sets.add("12");
		sets.add("123");
		sets.add("1234");
		sets.add("0");
		
		for (String string : sets) {
			System.out.println(string);
		}
	}
}
