#include <cstdint>
#include <iostream>

// fake
bool has_sse2() { return true; }
bool has_avx2() { return false; }

using SumFunc = float (*)(const float *, size_t);

float sum_generic(const float *data, size_t n) {
  float sum = 0.0f;
  for (size_t i = 0; i < n; ++i) {
    sum += data[i];
  }
  return sum;
}

float sum_sse2(const float *data, size_t n) {
  printf("sum_sse2...\n");

  return 1.0; // fake
}

float sum_avx2(const float *data, size_t n) {
  return 1.0; // fake
}

SumFunc &get_sum_fnc();
// Fonction d'initialisation pour le dispatching
float sum_init(const float *data, size_t n) {
  std::cout << "Initialisation de la fonction sum...\n";
  SumFunc &sum_impl = get_sum_fnc();
  if (has_avx2()) {
    sum_impl = sum_avx2;
  } else if (has_sse2()) {
    sum_impl = sum_sse2;
  } else {
    sum_impl = sum_generic;
  }
  return sum_impl(data, n);
}

// Gestion du pointeur de fonction statique
SumFunc &get_sum_fnc() {
  static SumFunc sum_impl = sum_init;
  return sum_impl;
}

// Fonction principale avec dispatching
float sum(const float *data, size_t n) { return get_sum_fnc()(data, n); }

int main() {
  float data[] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f};
  size_t n = sizeof(data) / sizeof(data[0]);
  float result = sum(data, n);
  std::cout << "sum : " << result << std::endl;
  float result2 = sum(data, n);
  std::cout << "sum : " << result2 << std::endl;
  return 0;
}