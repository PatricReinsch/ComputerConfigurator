package beans;

import java.io.Serializable;

public class BeansConfig implements Serializable {
    private String cpu;
    private String gpu;
    private String ram;
    private String rom;
    private String os;

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getGpu() {
        return gpu;
    }

    public void setGpu(String gpu) {
        this.gpu = gpu;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }
    
    public String getRom() {
        return rom;
    }

    public void setRom(String rom) {
        this.rom = rom;
    }
    
    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }
}