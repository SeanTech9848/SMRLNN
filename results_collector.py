import os
path_root = os.path.join(os.getcwd(), 'results')

# path_list = os.listdir(path_root)
#
# try:
#     path_list.remove('.DS_Store')
# except ValueError:
#     pass
#
# path_list.sort()

path_list = ['n200out1pps2', 'n300out1pps2', 'n500out1pps2', 'n800out1pps2', 'n1000out1pps2']

test_pehe = ''
sim_order = ''

for path_2 in path_list:
    print(path_2)
    path_3 = os.path.join(path_root, path_2)

    if not os.path.isfile(path_3):
        path_res = sorted(os.listdir(path_3))[2]
        path_4 = os.path.join(path_3, path_res, "results_summary.txt")
        with open(path_4) as f:
            # data = f.readlines()
            data = f.readlines()[15]
            datal1 = data.split('|')[1:3]
            datal2 = ''.join(datal1).split('+/-')
            datal3 = ''.join(datal2)
            # data[4:19]
            # test_pehe += (data[4:37] + '\n')
            test_pehe += (datal3 + '\n')
            sim_order += (path_2 + '\n')
        # print(test_pehe)

with open(path_root + '/PEHE.txt', 'w') as f:
    f.write(test_pehe)
    f.write(sim_order)


# python 0collect_results_sepsis.py
