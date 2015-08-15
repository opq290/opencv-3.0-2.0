#ifndef _HEADER_H_
#define _HEADER_H_


//typedef int * gtype_t;

typedef struct ga_individual * individual_t;
struct ga_individual{
  int parent1; //交叉での親１のインデックス
  int parent2;
  int cross_point;//交叉したポイント
  double fitness;
  std::vector<double>ptype;
  //individual_t next;
  int rank;
  std::vector<int> gtype;
};


typedef struct ga_population * ga_population_t;
struct ga_population{
  std::vector<individual_t> popu;
  int mutate_count; //変異回数の合計
  double max_fitness;
  double min_fitness;
  int population_size;
  int code_length;
};


#endif
  
