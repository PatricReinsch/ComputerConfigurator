package beans;

import price.price;

public class BeansConfig {

	// PC configuration
	private String cpu;
	private String mainboard;
	private String gpu;
	private String ram;
	private String ssd;
	private String hdd;
	private String os;

	// Prices
	private double cpuPrice;
	private double mainboardPrice;
	private double gpuPrice;
	private double ramPrice;
	private double ssdPrice;
	private double hddPrice;
	private double osPrice;

	// Getters and Setters
	public String getCpu() {
		return cpu;
	}

	public void setCpu(String cpu) {
		this.cpu = cpu;
		this.cpuPrice = price.getPrice(cpu);
	}

	public String getMainboard() {
		return mainboard;
	}

	public void setMainboard(String mainboard) {
		this.mainboard = mainboard;
		this.mainboardPrice = price.getPrice(mainboard);
	}

	public String getGpu() {
		return gpu;
	}

	public void setGpu(String gpu) {
		this.gpu = gpu;
		this.gpuPrice = price.getPrice(gpu);
	}

	public String getRam() {
		return ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
		this.ramPrice = price.getPrice(ram);
	}

	public String getSsd() {
		return ssd;
	}

	public void setSsd(String ssd) {
		this.ssd = ssd;
		this.ssdPrice = price.getPrice(ssd);
	}

	public String getHdd() {
		return hdd;
	}

	public void setHdd(String hdd) {
		this.hdd = hdd;
		this.hddPrice = price.getPrice(hdd);
	}

	public String getOs() {
		return os;
	}

	public void setOs(String os) {
		this.os = os;
		this.osPrice = price.getPrice(os);
	}

	// Get total price
	public double getTotalPrice() {
		return cpuPrice + mainboardPrice + gpuPrice + ramPrice + ssdPrice + hddPrice + osPrice;
	}

	// Getters for individual prices
	public double getCpuPrice() {
		return cpuPrice;
	}

	public double getMainboardPrice() {
		return mainboardPrice;
	}

	public double getGpuPrice() {
		return gpuPrice;
	}

	public double getRamPrice() {
		return ramPrice;
	}

	public double getSsdPrice() {
		return ssdPrice;
	}

	public double getHddPrice() {
		return hddPrice;
	}

	public double getOsPrice() {
		return osPrice;
	}
}