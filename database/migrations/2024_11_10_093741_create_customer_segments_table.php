<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCustomerSegmentsTable extends Migration
{
    public function up()
    {
        Schema::create('customer_segments', function (Blueprint $table) {
            $table->id();
            $table->string('segment_name');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('customer_segments');
    }
}
