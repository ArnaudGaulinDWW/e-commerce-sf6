<?php

namespace App\DataFixtures;

use App\Entity\Users;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\String\Slugger\SluggerInterface;
use Faker;

class UsersFixtures extends Fixture
{
    public function __construct(private UserPasswordHasherInterface   
     $passwordEncoder, private SluggerInterface $slugger){}

    public function load(ObjectManager $manager): void
    {
        

        $admin = new Users();
        $admin ->setEmail('admin@diane.fr');
        $admin ->setLastname('Rambot');
        $admin ->setFirstname('diane');
        $admin ->setAddress('2 rue des cookies');
        $admin ->setZipcode('17300');
        $admin ->setCity('Ha Bon !');
        $admin ->setPassword(
            $this->passwordEncoder->hashPassword($admin, 'admin')
        );
        $admin ->setRoles(['ROLE_ADMIN']);
        

        $manager->persist($admin);

        $faker =faker\Factory::create('fr_FR');

        for($usr =1; $usr<= 5; $usr++){
                    $user = new Users();
        $user ->setEmail($faker->email);
        $user ->setLastname($faker->lastname);
        $user ->setFirstname($faker-> firstname);
        $user ->setAddress($faker->streetaddress);
        $user ->setZipcode(str_replace(' ', '', $faker->postcode));
        $user ->setCity($faker->city);
        $user ->setPassword(
            $this->passwordEncoder->hashPassword($user, 'secret')
        );
        $user ->setRoles(['ROLE_user']);
        

        $manager->persist($user);
        }


        $manager->flush();
    }
}
