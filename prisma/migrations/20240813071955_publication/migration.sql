-- CreateTable
CREATE TABLE "Publication" (
    "pubId" TEXT NOT NULL,
    "pubTitle" TEXT NOT NULL,
    "userID" TEXT NOT NULL,

    CONSTRAINT "Publication_pkey" PRIMARY KEY ("pubId")
);

-- AddForeignKey
ALTER TABLE "Publication" ADD CONSTRAINT "Publication_userID_fkey" FOREIGN KEY ("userID") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
