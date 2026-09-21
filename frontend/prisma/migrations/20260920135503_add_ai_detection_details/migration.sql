-- AlterTable
ALTER TABLE "incidents" ADD COLUMN     "detectedObjects" TEXT,
ADD COLUMN     "frameNumber" INTEGER,
ADD COLUMN     "videoTimestamp" TEXT;
