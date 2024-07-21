<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateERegisterationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('e_registerations', function (Blueprint $table) {
                $table->id();
                $table->string('NameOfOwner');
                $table->string('district');
                $table->string('PECNo');
                $table->string('categoryAppliedFor');
                $table->string('NameOfContractor');
                $table->text('address');
                $table->string('categoryPEC');
                $table->string('CNICNumber');
                $table->string('speCODE');
                $table->string('fbrNONTN');
                $table->string('Email');
                $table->string('mobNo');
                $table->string('RegLimted');
                $table->string('CNICUpload');
                $table->string('fbrUpload');
                $table->string('PEC2020');
                $table->string('FormHUpload');
                $table->string('PreEnlistmentUpload');
                $table->string('decleration');
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
        Schema::dropIfExists('e_registerations');
    }
}
