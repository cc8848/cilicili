package cilicili.jz2.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class PasswordUtil {
	private static final int length = 30;
	private static final String salt = "CilIcILiByJZ2rGuhhnmcsGjkEYENmbHNn3gtbU4Rugnk4t4yJHuNeN4g3b2UyyuGEY";
	private static final String basePassword = "h4NF6LqwMG89YsEerCJUXW7RSDTpcyulnfgx5a13iBVjzQPmdtKZAbk0vOIoH2";
	
	public static String getHashedPassword(String rawPassword) {
		try {
			String rawHashedPassword = salt.concat(rawPassword).concat(basePassword);
			MessageDigest md5 = MessageDigest.getInstance("MD5");
			md5.reset();
			md5.update(rawHashedPassword.getBytes());
			byte[] digest = md5.digest();
			BigInteger bigInt = new BigInteger(1, digest);
			StringBuilder hashedPassword = new StringBuilder(bigInt.toString(16));
			while (hashedPassword.length() < 32) {
				hashedPassword.insert(0, "0");
			}
			return hashedPassword.toString().substring(7,27);
		} catch (NoSuchAlgorithmException e) {
			return rawPassword;
		}
	}
}
