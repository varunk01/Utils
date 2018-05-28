def swap_min_max(i_ls):
    """Given a list of unique numbers, swap the minimal and maximal elements of this
    list, printing the resulting list.
    """
    if len(ls)< 2:
        return -1
    
    low,low_idx = min(ls),ls.index(min(ls))
    high,high_idx =max(ls),ls.index(max(ls))
    ls[low_idx],ls[high_idx] = high,low
  
    return ls

if __name__ =='__main__':

    ls = [3,2,1,5,6,3]
    print('input:', ls)
    print('output:' ,swap_min_max(ls))
