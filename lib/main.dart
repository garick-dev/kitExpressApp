import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testproject/pages/product_card.dart';
import 'package:testproject/pages/reviews.dart';
import 'package:testproject/pages/search_city.dart';
import 'package:testproject/pages/empty_cart.dart';
import 'package:testproject/pages/full_cart_deactive.dart';
import 'package:testproject/pages/full_cart_active.dart';
import 'package:testproject/pages/ordering.dart';
import 'package:testproject/pages/my_orders.dart';
import 'package:testproject/pages/search.dart';
import 'package:testproject/pages/main.dart';
import 'package:testproject/pages/create_task.dart';
import 'package:testproject/pages/task_example_individual.dart';
import 'package:testproject/pages/my_task_individual.dart';
import 'package:testproject/pages/responses.dart';
import 'package:testproject/pages/chat.dart';
import 'package:testproject/pages/search_performers.dart';
import 'package:testproject/pages/need_people.dart';
import 'package:testproject/pages/profile_performer.dart';
import 'package:testproject/pages/task_legal/new_task/new_tasks.dart';
import 'package:testproject/pages/task_legal/new_task/my_task_new.dart';
import 'package:testproject/pages/task_legal/tasks_in_process/tasks_in_process.dart';
import 'package:testproject/pages/task_legal/tasks_in_process/my_task_process.dart';
import 'package:testproject/pages/task_legal/task_completed/task_completed.dart';
import 'package:testproject/pages/task_legal/task_completed/my_task_completed.dart';
import 'package:testproject/pages/burger_menu_category.dart';
import 'package:testproject/pages/burger_menu_subcategory.dart';
import 'package:testproject/pages/technics/category_technics.dart';
import 'package:testproject/pages/technics/select_product_technics.dart';
import 'package:testproject/pages/technics/product_card_technics.dart';
import 'package:testproject/pages/technics/full_cart_deactive_technics.dart';
import 'package:testproject/pages/technics/ordering_technics.dart';
import 'package:testproject/pages/technics/my_orders_technics.dart';
import 'package:testproject/pages/add_review/add_review.dart';
import 'package:testproject/pages/add_review/new_review.dart';
import 'package:testproject/pages/add_review/thank_for_review.dart';
import 'package:testproject/pages/transportation/category_transportation.dart';
import 'package:testproject/pages/transportation/select_product_transportation.dart';
import 'package:testproject/pages/transportation/product_card_transportation.dart';
import 'package:testproject/pages/transportation/full_cart_deactive_transportation.dart';
import 'package:testproject/pages/transportation/ordering_transportation.dart';
import 'package:testproject/pages/transportation/my_orders_transportation.dart';
import 'package:testproject/pages/enter_code.dart';



import 'package:testproject/pages/test.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/enter_code',
      routes: {
      '/': (context) => const MainPage(),
      '/product_card': (context) => const ProductCard(),
      '/reviews': (context) => const Reviews(),
      '/search_city': (context) => const SearchCity(),
      '/empty_cart': (context) => const EmptyCart(),
      '/full_cart_deactive': (context) => const FullCartDeactive(),
      '/full_cart_active': (context) => const FullCartActive(),
      '/ordering': (context) => const Ordering(),
      '/my_orders': (context) => const MyOrders(),
      '/search': (context) => const SearchMain(),
      '/create_task': (context) => const CreateTask(),
      '/task_example_individual': (context) => const TaskExampleIndividual(),
      '/my_task_individual': (context) => const MyTaskIndividual(),
      '/responses': (context) => const Responses(),
      '/chat': (context) => const Chat(),
      '/search_performers': (context) => const SearchPerformers(),
      '/need_people': (context) => const NeedPeople(),
      '/profile_performer': (context) => const ProfilePerformer(),
      '/new_tasks': (context) => const NewTasks(),
      '/my_task_new': (context) => const MyTaskLegal(),
      '/tasks_in_process': (context) => const TasksInProcess(),
      '/my_task_process': (context) => const MyTaskLegalInProcess(),
      '/task_completed': (context) => const TaskCompleted(),
      '/my_task_completed': (context) => const MyTaskLegalInCompleted(),
      '/burger_menu_category': (context) => const BurgerMenuCategory(),
      '/burger_menu_subcategory': (context) => const BurgerMenuSubcategory(),
      '/category_technics': (context) => const CategoryTechnics(),
      '/select_product_technics': (context) => const SelectProductTechnics(),
      '/product_card_technics': (context) => const ProductCardTechnics(),
      '/full_cart_deactive_technics': (context) => const FullCartDeactiveTechnics(),
      '/ordering_technics': (context) => const OrderingTechnics(),
      '/my_orders_technics': (context) => const MyOrdersTechnics(),
      '/add_review': (context) => const AddReview(),
      '/new_review': (context) => const NewReview(),
      '/thank_for_review': (context) => const ThankForReview(),
      '/category_transportation': (context) => const CategoryTransportation(),
      '/select_product_transportation': (context) => const SelectProductTransportation(),
      '/product_card_transportation': (context) => const ProductCardTransportation(),
      '/full_cart_deactive_transportation': (context) => const FullCartDeactiveTransportation(),
      '/ordering_transportation': (context) => const OrderingTransportation(),
      '/my_orders_transportation': (context) => const MyOrdersTransportation(),
      '/enter_code': (context) => const EnterCode(),


      '/test': (context) => const Test(),
      },
      
));
