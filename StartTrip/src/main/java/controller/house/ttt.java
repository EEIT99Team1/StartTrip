package controller.house;

import java.util.ArrayList;
import java.util.List;

import model.bean.HouseBean;

public class ttt {

	public static void main(String[] args) {
		List<Integer> bb =new ArrayList<Integer>();
		
	for(int a=0;a<5;a++) {
		bb.add(a);	
	}
	
	for(Integer cc:bb) {
		System.out.println("cc="+cc);
		 for(int q=0;q<3;q++) {
			 System.out.println("q="+q);
			 if(cc==2) {
				 break;
			 }
		 }
	}

		

	}

}
