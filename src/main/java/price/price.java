package price;

import java.util.HashMap;
import java.util.Map;

public class price {
	private static final Map<String, Double> prices = new HashMap<>();

	// Set Prices
	static {
		prices.put("r5950x", 799.);
		prices.put("r5900x", 549.);
		prices.put("r5900", 499.);
		prices.put("r5800x3d", 699.);
		prices.put("r5800x", 599.);
		prices.put("r5800", 449.);
		prices.put("r5700x3d", 649.);
		prices.put("r5700x", 549.);
		prices.put("r5600x", 349.);
		prices.put("r5600", 299.);

		prices.put("msib550", 129.);
		prices.put("asusb550", 139.);
		prices.put("msix570", 199.);
		prices.put("asusx570", 209.);

		prices.put("rtx4090", 1599.);
		prices.put("rtx4080ti", 1199.);
		prices.put("rtx4080", 1399.);
		prices.put("rtx4070", 699.);
		prices.put("rtx4060ti", 499.);
		prices.put("rx6800xt", 749.);
		prices.put("rx6700xt", 479.);
		prices.put("rx6900xt", 999.);
		prices.put("rx6600xt", 379.);
		prices.put("rx6800", 649.);

		prices.put("16gb", 79.);
		prices.put("32gb", 149.);
		prices.put("64gb", 289.);

		prices.put("0gb", 0.);
		prices.put("512gb", 59.);
		prices.put("1tb", 99.);
		prices.put("2tb", 179.);
		prices.put("4tb", 359.);

		prices.put("0gb_hdd", 0.);
		prices.put("1tb_hdd", 49.);
		prices.put("2tb_hdd", 69.);
		prices.put("4tb_hdd", 119.);

		prices.put("win10", 139.);
		prices.put("win11", 149.);
		prices.put("x", 0.);
	}

	public static double getPrice(String component) {
		return prices.getOrDefault(component, 0.0);
	}
}