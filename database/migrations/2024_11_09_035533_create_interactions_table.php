<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
public function up()
{
    Schema::create('interactions', function (Blueprint $table) {
        $table->id();
        $table->foreignId('contact_id')->constrained()->onDelete('cascade');
        $table->string('type'); // Email, Call, Meeting, etc.
        $table->text('notes')->nullable();
        $table->timestamp('interaction_date');
        $table->timestamps();
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('interactions');
    }
};
