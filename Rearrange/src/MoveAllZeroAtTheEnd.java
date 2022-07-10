import java.util.Arrays;

public class MoveAllZeroAtTheEnd {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int arr[]={1, 2, 0, 0, 0, 3, 6};
		int n= arr.length,  i=0, count=0;
		
		//1st method - Output didn't match with first method.
		/*while(i<j)
		{
			if(arr[i]!=0)
				i++;
			else if(arr[j]==0)
				j--;
			else if (arr[i]==0 && arr[j]!=0)
			{
				int temp= arr[i];
				arr[i]=arr[j];
				arr[j]=temp;
			}
			
		}
		*/
		//  Method 2 
		/* while(i<n) {
			flag=0;
			if(arr[i]==0)
			{
				leftRotate(arr,i,n)	;
				flag=1;
			}
			if(flag==0)
			i++;
		}
		for(int k=0; k<n ;k++)
			System.out.println(arr[k]);
	}
	static void leftRotate(int arr[], int lb, int ub)
	{
		int templ= arr[lb];
		for(int i=lb; i<ub-1; i++)
			arr[i]=arr[i+1];
			arr[ub-1]=templ;		
		
	}
	*/
		for(i=0;i<n;i++)
		{
			if(arr[i]!=0)
				arr[count++]=arr[i];
				
		}
		while(count<n)
			arr[count++]=0;
		
		for(int k=0; k<n ;k++)
			System.out.println(arr[k]);
	}
}
