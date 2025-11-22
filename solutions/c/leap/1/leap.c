#include "leap.h"

bool leap_year(int year) {
    bool divisible_by_4   = (year % 4 == 0);
    bool divisible_by_100 = (year % 100 == 0);
    bool divisible_by_400 = (year % 400 == 0);

    return (divisible_by_4 && !divisible_by_100) || divisible_by_400;
}