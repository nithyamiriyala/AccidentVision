# AccidentVision 🚨

## AI-Powered Real-Time Road Accident Detection and Monitoring

AccidentVision is a computer vision-based road safety system that analyzes video footage to identify potential road accidents. It combines YOLO-based object detection, real-time video processing, incident management, and visual evidence capture in a web-based monitoring dashboard.

When an accident is detected, the system records relevant AI detection information and captures the corresponding video frame. The incident can then be reviewed through the verification dashboard.

---

## ✨ Key Features

### 🤖 AI-Based Accident Detection

Uses a YOLO-based computer vision model to identify accident-related events from video footage.

### 📹 Video & CCTV Monitoring

Processes video sources through a FastAPI backend and provides monitoring through a Next.js dashboard.

### 📊 AI Detection Details

For detected accidents, the system records:

- Accident type
- Detection confidence
- Detected objects
- Video frame number
- Video timestamp
- CCTV camera information

### 📸 Accident Evidence

When an accident is detected, the relevant video frame is captured and associated with the incident.

### 🔍 Incident Verification

Detected incidents can be reviewed through the dashboard before being treated as verified events.

### ⚡ Real-Time WebSocket Communication

The frontend communicates with the detection backend through WebSockets to receive accident detection events while video processing is running.

---

## 🧠 How AccidentVision Works

```text
Video / CCTV Source
        ↓
Video Processing
        ↓
YOLO Detection
        ↓
Accident Identification
        ↓
Detection Details
        ↓
Evidence Capture
        ↓
WebSocket Event
        ↓
Next.js Dashboard
        ↓
Incident Verification
        ↓
PostgreSQL Database
```

---

## Detection Flow

1. A video or CCTV source provides the input.
2. The backend processes the incoming video frames.
3. YOLO analyzes the frames and detects relevant objects.
4. Accident-related detections are identified.
5. Detection confidence and frame information are recorded.
6. A relevant frame is captured as accident evidence.
7. Detection information is sent to the dashboard through WebSockets.
8. The incident is stored in the database.
9. The incident can be reviewed through the verification interface.

---

## 📋 AI Detection Information

AccidentVision provides detailed information for detected incidents.

| Detection Information | Description |
| --------------------- | ------------------------------------------------ |
| Accident Type         | Type associated with the detected incident       |
| Confidence            | Confidence returned by the detection model       |
| Detected Objects      | Objects identified in the detection frame        |
| Frame Number          | Video frame where the detection occurred         |
| Video Timestamp       | Approximate time of the detection                |
| CCTV Camera           | Camera associated with the incident              |
| Evidence              | Captured frame associated with the incident      |

---

## 📸 Accident Evidence

AccidentVision captures visual evidence when an accident is detected.

The evidence can be reviewed from the Incident Verification interface.

Users can:

- View the captured evidence
- Zoom into the image
- Download the evidence
- Review the associated AI detection information

---

## 🏗️ Technology Stack

### Frontend

- Next.js
- React
- TypeScript
- Tailwind CSS
- NextAuth / Google OAuth
- Leaflet

### Backend

- Python
- FastAPI
- Uvicorn
- OpenCV
- PyTorch
- Ultralytics YOLO
- Supervision
- ByteTrack

### Database

- PostgreSQL
- Prisma ORM

---

## 📂 Project Structure

```text
AccidentVision/
│
├── backend/
│   ├── app.py
│   ├── model/
│   │   └── best.pt
│   ├── Nirikshan/
│   └── requirements.txt
│
├── frontend/
│   ├── app/
│   ├── components/
│   ├── services/
│   ├── prisma/
│   ├── public/
│   └── package.json
│
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites

Make sure the following are installed:

- Node.js
- npm
- Python 3.11+
- PostgreSQL
- Git

A GPU is optional. The detection pipeline can also run using CPU-based PyTorch.

---

## 📥 Installation

### 1. Clone the Repository

```bash
git clone https://github.com/nithyamiriyala/AccidentVision.git
cd AccidentVision
```

### 2. Install Frontend Dependencies

```bash
cd frontend
npm install --legacy-peer-deps
```

### 3. Configure Environment Variables

Configure the required environment variables inside the frontend directory.

The application requires configuration for:

- PostgreSQL database
- Authentication secret
- Google OAuth credentials

Do not commit `.env` or `.env.local` files containing secrets.

### 4. Set Up the Database

Make sure PostgreSQL is running.

From the frontend directory:

```bash
npx prisma migrate dev
npx prisma generate
```

### 5. Set Up the Backend

Open another terminal:

```bash
cd backend
python -m venv venv
```

For Windows:

```bash
venv\Scripts\activate
```

For macOS/Linux:

```bash
source venv/bin/activate
```

Install dependencies:

```bash
pip install -r requirements.txt
```

---

## ▶️ Running the Application

### Start the Backend

From the backend directory:

```bash
python -m uvicorn app:app --host 0.0.0.0 --port 8000
```

Backend:

```
http://localhost:8000
```

Health check:

```
http://localhost:8000/health
```

### Start the Frontend

From the frontend directory:

```bash
npm run dev
```

Frontend:

```
http://localhost:3000
```

---

## 🎥 Testing

The project includes sample video files that can be used to test the accident detection pipeline.

The testing workflow allows the system to:

1. Process the video.
2. Detect accident-related events.
3. Display AI detection information.
4. Capture accident evidence.
5. Create an incident.
6. Review the incident through the verification dashboard.

---

## 🔐 Authentication

The application supports Google OAuth authentication for accessing the monitoring dashboard.

Authentication credentials and application secrets should always be stored in environment variables and should never be committed to the repository.

---

## 🎯 Project Objective

The objective of AccidentVision is to assist road-safety monitoring by using computer vision to identify potential accidents from video data and provide useful detection information and visual evidence for human review.

The system is intended to assist human monitoring and verification rather than make final decisions automatically.

---

## 🔮 Future Improvements

Potential future enhancements include:

- Physical RTSP CCTV camera integration
- Multi-camera monitoring
- Automated emergency-service notifications
- Cloud deployment
- Advanced accident analytics
- Historical incident visualization
- Improved detection across different road and weather conditions

---

## 🙌 Acknowledgment

AccidentVision builds upon the original Nirikshan project and its computer-vision-based accident detection approach.

Model and dataset resources should be credited according to their respective licenses and original sources.