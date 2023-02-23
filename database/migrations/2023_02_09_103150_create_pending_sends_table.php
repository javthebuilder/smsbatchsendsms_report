<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePendingSendsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pending_sends', function (Blueprint $table) {
            $table->id();
            $table->string('status')->default('P');
            $table->string('number')->nullable();            
            $table->string('message')->nullable();
            $table->string('batchid')->nullable();
            $table->string('batchdate')->nullable();
            $table->string('message_type')->nullable();
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
        Schema::dropIfExists('pending_sends');
    }
}
