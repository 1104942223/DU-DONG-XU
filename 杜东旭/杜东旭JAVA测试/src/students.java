
import java.util.Scanner;

public class students {
	private String name;
	private int id;
	private double grade;
	private double total=0;
	
	public void setname (String name){
		this.name=name;
	}
	
	public void setid (int id){
		this.id=id;
	}
	
	public double setgrade(double grade){
		this.grade=grade;
		return grade;
	}
	
	public void settotal(double grade){
		this.total+=grade;
	}
	
	public double gettotal(){
		return total;
	}
	
	public double getaverage(){
		return total/10;
	}
	public static void main(String[] args) {
		students a=new students ();
		double [] grade=new double[10];
		Scanner in=new Scanner (System.in);
		System.out.println("������ѧ������Ϣ��");
		System.out.println("������");
		a.setname(in.next());
		System.out.println("ѧ�ţ�");
		a.setid(in.nextInt());
		System.out.println("������10�ųɼ���");
		for (int i=0;i<grade.length;i++){
			grade[i]=a.setgrade(in.nextDouble());
			a.settotal(grade[i]);
		}
		System.out.println("�ܳɼ�Ϊ��"+a.gettotal());
		System.out.println("ƽ����Ϊ��"+a.getaverage());
	}

}
