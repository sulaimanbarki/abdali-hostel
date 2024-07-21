<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStatusToERegisterations extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('e_registerations', function (Blueprint $table) {
            $table->boolean('status')->default(1);
            $table->string('progress')->default('new');
            $table->text('description')->nullable();
            $table->text('error')->nullable();
            $table->string('email_status')->nullable();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('e_registerations', function (Blueprint $table) {
            //
        });
    }
}
