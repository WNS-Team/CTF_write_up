# resolved
import string

""" Exe file contains:
_main(argc, argv, envp);
  check[0] = 1983;
  check[1] = 1963;
  check[2] = 1952;
  check[3] = 1953;
  check[4] = 1982;
  check[5] = 1973;
  check[6] = 87;
  check[7] = 70;
  check[8] = 1969;
  check[9] = 1967;
  check[10] = 80;
  check[11] = 1979;
  check[12] = 93;
  check[13] = 1979;
  check[14] = 1967;
  check[15] = 109;
  check[16] = 73;
  check[17] = 1964;
  check[18] = 72;
  check[19] = 111;
  check[20] = 1979;
  check[21] = 84;
  check[22] = 108;
  check[23] = 1966;
  check[24] = 89;
  puts("INPUT YOUR FLAG:");
  scanf("%s", flag);
  for ( i = 0; i <= 24; ++i )
  {
    v3 = enc(flag[i]);
    if ( enc(v3 + 36) != check[i] )
    {
      puts("INCORRECT!!!");
      return 0;
    }
  }
  puts("GOOD JOB, HACKER");
  return 0;
}
"""
check = [0] * 25
check[0] = 1983
check[1] = 1963
check[2] = 1952
check[3] = 1953
check[4] = 1982
check[5] = 1973
check[6] = 87
check[7] = 70
check[8] = 1969
check[9] = 1967
check[10] = 80
check[11] = 1979
check[12] = 93
check[13] = 1979
check[14] = 1967
check[15] = 109
check[16] = 73
check[17] = 1964
check[18] = 72
check[19] = 111
check[20] = 1979
check[21] = 84
check[22] = 108
check[23] = 1966
check[24] = 89
alph = string.ascii_lowercase + string.ascii_uppercase + string.digits + string.punctuation
key = 0
while key < len(check)-1:
    for i in alph:
        v3 = 2989 ^ ord(i)
        try:
            if 2989 ^ (v3 + 36) == check[key]:
                print(i, end='')
                key += 1
        except:
            break
