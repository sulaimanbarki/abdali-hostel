<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('registrations', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('father_name');
            $table->unsignedBigInteger('floor_id');
            $table->unsignedBigInteger('room_id');
            $table->string('cnic')->nullable();
            $table->decimal('amount', 10, 2);
            $table->string('address');
            $table->string('image')->nullable();
            $table->date('registration_date');
            $table->string('phone_no');
            $table->string('whatsapp_no');
            $table->date('dob');
            $table->string('email');
            $table->string('status')->default('Active');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('registrations');
    }
};
