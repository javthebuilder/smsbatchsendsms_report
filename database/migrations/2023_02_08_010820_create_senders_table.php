<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSendersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('senders', function (Blueprint $table) {
            $table->id();
            $table->string('batchid')->nullable();            
            $table->dateTime('batch_proccessed_date', $precision = 0);
            $table->integer('message_id')->nullable();
            $table->integer('user_id')->nullable();
            $table->string('user')->nullable();
            $table->integer('account_id')->nullable();
            $table->string('account')->nullable();
            $table->string('recipient')->nullable();
            $table->string('message')->nullable();
            $table->string('sender_name')->nullable();
            $table->string('network')->nullable();
            $table->string('status')->nullable();
            $table->string('type')->nullable();
            $table->string('source')->nullable();
            $table->string('message_type')->nullable();
            $table->dateTime('created_at', $precision = 0);
            $table->dateTime('updated_at', $precision = 0);          
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('senders');
    }
}
