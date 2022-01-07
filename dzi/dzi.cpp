#include <iostream>
#include <vector>
#include <set>


using namespace std;

int maksymalna_liczba_energii(vector<char>& pola, set<int>& pozycje_x, set<int>& pozycje_y, int n)
{
    if(pozycje_x.size() == 0)
    {
        return 0;
    }

    int max = 0;
    
    for(int max_x: pozycje_x)
    {
        for(int min_x: pozycje_x)
        {
            for(int max_y: pozycje_y)
            {
                for(int min_y: pozycje_y)
                {
                    int suma_energii = 0;

                    for(int x = min_x; x <= max_x; x++)
                    {
                        for(int y = min_y; y <= max_y; y++)
                        {
                            suma_energii += pola[y*n+x];
                        }
                    }

                    if(suma_energii > max)
                    {
                        max = suma_energii;
                    }
                }
            }
        }
    }

    return max;
}

int main()
{
    while (true)
    {
        int n;
        cin >> n;

        if (n == 0) break;

        vector<char> pola(n * n);
        set<int> pozycje_x;
        set<int> pozycje_y;

        for (int y = 0; y < n; y++)
        {
            for (int x = 0; x < n; x++)
            {
                int pole;
                cin >> pole;
                pola[y * n + x] = pole;

                if (pole > 0)
                {
                    pozycje_x.insert(x);
                    pozycje_y.insert(y);
                }
            }
        }

        cout << maksymalna_liczba_energii(pola, pozycje_x, pozycje_y, n) << '\n';
    }

    return 0;
}