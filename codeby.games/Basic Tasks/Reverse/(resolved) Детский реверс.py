# resolved

""" Exe file contains:
 _main(argc, argv, envp);
  qmemcpy(orig, "CODEBY{WOW_YOU_HAVE_REALLY_BIG_BRAIN}", sizeof(orig));
  puts("VERY HARD TASK FOR VERY SMART REVERSERS\a");
  puts("ENTER YOUR FLAG:");
  scanf("%s", flag);
  for ( i = 0; i <= 36; ++i )
  {
    if ( flag[i] != orig[i] )
    {
      printf("OOPS, YOU R NOT RIGHT");
      return 0;
    }
  }
  printf("CONGRATULATIONS, YOU R VERY SMART!");
  return 0;
}
"""

# ...OMG