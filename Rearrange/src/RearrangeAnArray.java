/* Rearrange an array such that arr[i] = i */

public class RearrangeAnArray {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int arr[] = {0, 3, 6, 1, 5, 2, 4};
		int temp[]=new int[arr.length];
		
		for(int i=0;i< arr.length;i++)
		{
			if(arr[i]!=i)
			{
			 int k=arr[i];
			 while(arr[i]!=i)
			 {
				 
			 }
			//temp[arr[i]]=i;
			}
		}
		for(int i=0;i<arr.length;i++)
			arr[i]=temp[i]; 
		
		for(int i=0;i<arr.length;i++)
		System.out.println(arr[i]);
	}

}
