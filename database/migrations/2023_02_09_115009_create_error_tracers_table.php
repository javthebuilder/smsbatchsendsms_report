<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateErrorTracersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('error_tracers', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('message',5000)->nullable();
            $table->string('message_info',5000)->nullable();
            $table->string('from_api',5000)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('error_tracers');
    }
}
