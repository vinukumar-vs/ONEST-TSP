-- CreateTable
CREATE TABLE "Adapter" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "config" JSONB NOT NULL,

    CONSTRAINT "Adapter_pkey" PRIMARY KEY ("id")
);
