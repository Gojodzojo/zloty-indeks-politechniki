#include <iostream>
#include <vector>
#include <set>

using namespace std;

int kadane_1D(vector<int> a)
{
    int best_sum = 0, current_sum = 0;

    for (auto field : a)
    {
        current_sum += field;

        if (current_sum > best_sum)
        {
            best_sum = current_sum;
        }
        else if (current_sum < 0)
        {
            current_sum = 0;
        }
    }

    return best_sum;
}

int kadane_2D(vector<char> fields, int n)
{
    int best_sum = 0;

    for (int start_index = 0; start_index < n; start_index++)
    {
        vector<int> columns_sums(n, 0);
        for (int i = start_index; i < n; i++)
        {
            for (int j = 0; j < n; j++)
            {
                columns_sums[j] += fields[j * n + i];
            }

            int current_sum = kadane_1D(columns_sums);
            if (current_sum > best_sum)
            {
                best_sum = current_sum;
            }
        }
    }

    return best_sum;
}

int main()
{
    while (true)
    {
        int n;
        cin >> n;

        if (n == 0)
            break;

        vector<char> fields(n * n);

        for (int y = 0; y < n; y++)
        {
            for (int x = 0; x < n; x++)
            {
                int field;
                cin >> field;
                fields[y * n + x] = field;
            }
        }

        cout << kadane_2D(fields, n) << '\n';
    }

    return 0;
}