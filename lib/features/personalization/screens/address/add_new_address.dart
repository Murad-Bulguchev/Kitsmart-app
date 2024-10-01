import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MMAppBar(
          showBackArrow: true, title: Text('Добавить новый адрес')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MMSizes.defaultSpace),
          child: Form(child: Column(
            children: [
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Имя')),
              const SizedBox(height: MMSizes.spaceBtwInputFields),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Номер телефона')),
              const SizedBox(height: MMSizes.spaceBtwInputFields),
              Row(
                children: [
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Улица'))),
                  const SizedBox(width: MMSizes.spaceBtwInputFields),
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'почтовый индекс'))),
                ],
              ),

              const SizedBox(height: MMSizes.spaceBtwInputFields),
              Row(
                children: [
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'Город'))),
                  const SizedBox(width: MMSizes.spaceBtwInputFields),
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'Государство'))),
                ],
              ),

              const SizedBox(height: MMSizes.spaceBtwInputFields),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Страна')),
              const SizedBox(height: MMSizes.defaultSpace),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: Text('Сохранить')),)
            ],
          )),
        ),
      ),
    );
  }
}
