# 베이스 이미지
FROM python:3.10-slim

# 작업 디렉토리 생성
WORKDIR /app

# 종속성 복사 & 설치
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# 프로젝트 소스 복사
COPY . .

# 컨테이너 실행 시 기본 명령
CMD ["python", "hello.py"]
