
package myPackage.classes;


public class Results {
    
    private String std_id,total_marks,obt_marks,status;

    public Results() {
    }

    public Results( String std_id, String total_marks, String obt_marks, String status) {
        
        this.std_id = std_id;
        this.total_marks = total_marks;
        this.obt_marks = obt_marks;
        this.status = status;
    }


    public String getstd_id() {
        return std_id;
    }

    public void setstd_id(String std_id) {
        this.std_id = std_id;
    }

    public String gettotal_marks() {
        return total_marks;
    }

    public void settotal_marks(String total_marks) {
        this.total_marks = total_marks;
    }

    public String getobt_marks() {
        return obt_marks;
    }

    public void setobt_marks(String obt_marks) {
        this.obt_marks = obt_marks;
    }

    public String getstatus() {
        return status;
    }

    public void setstatus(String status) {
        this.status = status;
    }
    
    
}
