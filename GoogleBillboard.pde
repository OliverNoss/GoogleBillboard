public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  

public void setup()  
{            
	noLoop();  
}  
public void draw()  
{   
	System.out.println(theAnswer());
	//not needed for this assignment
}  
public boolean isPrime(double num)
{
	boolean temp=true;
	if(num>1)
	{
		for(int i=2; i<=Math.sqrt(num);i++)
		{
			if(num%i==0&&i!=num)
				temp=false;

		}
	}

	else{
		temp = false;
	}

	return temp;
}
public double theAnswer()
{
	String digits;
	double dNum;
	double dNumFinal=0;
	for (int n = 2; n<e.length()-10; n++)
	{
		digits = e.substring(n,n+10);
		dNum = Double.parseDouble(digits); 
		if (isPrime(dNum))
			dNumFinal=dNum;
		
	}
	return dNumFinal;
}