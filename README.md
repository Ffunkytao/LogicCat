# LogicCat: A Chain-of-Thought Text-to-SQL Benchmark for Complex Reasoning

**📢 Accepted to AAAI 2026 (Poster)**

**Authors:** Tao Liu*, Xutao Mao*, Hongying Zan†, Dixuan Zhang, Yifan Li, Haixin Liu, Lulu Kong, Jiaming Hou, Rui Li, YunLong Li, Aoze Zheng, Zhiqiang Zhang, Zhewei Luo, Kunli Zhang, Min Peng

*Equal contribution, Ordered by Last Name in Alphabet | †Corresponding author

**Affiliations:** Zhengzhou University, Vanderbilt University, Wuhan University


## 🗂️ Database and Dataset Structure

### Database Overview

LogicCat contains **45 databases** spanning diverse real-world domains, organized into seven high-level categories:

| **Category** | **Domains** | **Coverage** |
|-------------|-------------|--------------|
| **Consumer IoT** | Computer, iPad, Phone, Phone market, Air conditioner, Earphone, Television, Mouse, Printer, Watch, Water heater, Rice cooker | 31.12% |
| **Transportation** | Car, Car engine, Bike, Yacht, Ship, Submarine, Railway, Railway station, AirCraft, Roller coaster, New energy vehicles, Electric scooter | 26.06% |
| **Industry** | Generators, Wind turbine, Gas, Water pump, Smart Home (SmartHomeDB), Energy Management (EnergyManagementDB) | 10.1% |
| **Infrastructure** | Hospital, School, Concert, Exercise club, Contract, Architect, Population | 10.1% |
| **Services** | Equipment Management (EquipmentManagementDB), Alarm System (AlarmSystem), Data Collector (DataCollector) | 10.1% |
| **Research** | Physics Lab (PhysicsLabDB), Water Quality Monitor (WaterQualityMonitor), Rain Gauge (RainGauge) | 9.06% |
| **Agriculture** | Lawn mower | 3.35% |

**Database Statistics:**
- Average tables per database: **5.71**
- Average columns per database: **61.07**
- Total arithmetic operators: **17,869**
- Average table joins per query: **3.1**

### Dataset Structure

```
LogicCat/
├── MySQL/
│   ├── database/              # 45 MySQL SQL schema files
│   │   ├── air_conditioner.sql
│   │   ├── AirCraft.sql
│   │   ├── phone.sql
│   │   └── ...
│   ├── data.json              # Question–SQL pairs with annotations
│   ├── data.sql               # Complete database dumps
│   ├── table.json             # Database schema information
│
├── Sqlite/
│   ├── database/              # 45 SQLite .db files
│   │   ├── air_conditioner.db
│   │   ├── aircraft.db
│   │   ├── phone.db
│   │   └── ...
│   ├── data.json              # Question–SQL pairs with annotations
│   ├── data.sql               # Complete database dumps
│   ├── table.json             # Database schema information
│
└── Small500/                  # 500-sample lightweight subset
    ├── mysql_gold_500.sql     # MySQL gold SQL scripts (500 samples)
    ├── mysql_tiny_500.json    # MySQL question–SQL subset (500 samples)
    ├── sqlite_gold_500.sql    # SQLite gold SQL scripts (500 samples)
    ├── sqlite_tiny_500.json   # SQLite question–SQL subset (500 samples)
```

### Data Format

Each entry in `data.json` contains:

```json
{
  "db_id": "database_name",
  "question": "Natural language question",
  "sql": "Ground truth SQL query",
  "difficulty": "easy|medium|hard",
  "reasoning_types": ["Physical", "Mathematical", "Commonsense", "Hypothetical"],
  "chain_of_thought": [
    "Step 1: ...",
    "Step 2: ...",
    "Step 3: ..."
  ],
  "formulas": ["formula1", "formula2"],
  "expected_result": "..."
}
```

### Reasoning Type Distribution

| **Reasoning Type** | **Count** | **Percentage** | **Description** |
|-------------------|-----------|----------------|-----------------|
| Physical Knowledge | 1,142 | 35.0% | Requires physics formula application and unit-aware calculations |
| Mathematical Logic | 1,087 | 78.0% | Involves arithmetic reasoning and logical thinking |
| Common Sense | 1,062 | 59.0% | Requires real-world knowledge and implicit inference |
| Ideal Hypothetical | 1,073 | 25.0% | Involves counterfactual and imaginative reasoning |

**Note:** Questions may belong to multiple reasoning categories.

### Difficulty Distribution

| **Difficulty** | **SQL Tokens** | **Arithmetic Ops** | **Count** | **Percentage** |
|---------------|----------------|-------------------|-----------|----------------|
| Easy | < 30 | < 5 | 1,443 | 35.73% |
| Medium | 30-70 | 5-7 | 1,897 | 46.97% |
| Hard | ≥ 70 | ≥ 7 | 698 | 17.28% |

---

## 🚀 How to Use

### Prerequisites

```bash
# Python 3.8+
pip install mysql-connector-python  # For MySQL
# OR
pip install sqlite3  # For SQLite (usually pre-installed)

# Additional dependencies
pip install pandas numpy
```

### Quick Start

#### 1. **Loading the Dataset**

```python
import json

# Load question-SQL pairs
with open('MySQL/data.json', 'r', encoding='utf-8') as f:
    dataset = json.load(f)

# Load database schema information
with open('MySQL/table.json', 'r', encoding='utf-8') as f:
    schemas = json.load(f)

print(f"Total questions: {len(dataset)}")
print(f"Total databases: {len(schemas)}")
```

#### 2. **Connecting to Databases**

**For MySQL:**

```python
import mysql.connector

# Create database from schema
with open('MySQL/database/phone.sql', 'r') as f:
    schema_sql = f.read()

# Connect and create database
conn = mysql.connector.connect(
    host='localhost',
    user='your_username',
    password='your_password'
)
cursor = conn.cursor()
cursor.execute("CREATE DATABASE IF NOT EXISTS phone_db")
cursor.execute("USE phone_db")

# Execute schema
for statement in schema_sql.split(';'):
    if statement.strip():
        cursor.execute(statement)

conn.commit()
```

**For SQLite:**

```python
import sqlite3

# Connect to SQLite database (already populated)
conn = sqlite3.connect('Sqlite/database/phone.db')
cursor = conn.cursor()

# Query example
cursor.execute("SELECT * FROM sqlite_master WHERE type='table'")
tables = cursor.fetchall()
print(f"Tables: {tables}")
```

## Evalaution Pipeline 
On Progess (Nov 9 2025)

## 📊 Benchmark Results

### State-of-the-Art Performance

We evaluated leading LLMs and specialized Text-to-SQL methods on LogicCat. The results demonstrate the exceptional difficulty of our benchmark:

| **Model/Method** | **Overall EX (%)** | **Overall EM (%)** | **Easy EX (%)** | **Medium EX (%)** | **Hard EX (%)** |
|-----------------|-------------------|-------------------|----------------|------------------|----------------|
| **Specialized Methods** | | | | | |
| Chess-SQL + GPT-4o | **33.20** | 70.01 | **40.23** | 14.91 | 14.28 |
| CHASE-SQL + Gemini-2.5 | 31.03 | 69.91 | 37.45 | 15.56 | **14.96** |
| CHASE-SQL + GPT-4o | 29.81 | 72.79 | 30.11 | **16.28** | 9.89 |
| OmniSQL-32B | 22.41 | 71.59 | 24.35 | 14.62 | 11.49 |
| XiYan-SQL-32B | 21.85 | 72.13 | 23.17 | 14.88 | 12.83 |
| **General-Purpose LLMs** | | | | | |
| GPT-4.1 | 30.06 | **79.92** | 36.86 | 16.04 | 14.86 |
| Gemini-2.5-Pro | 29.26 | 71.00 | 35.90 | 15.98 | 13.51 |
| o3-mini | 29.80 | 73.65 | 35.33 | 15.81 | 14.16 |
| Claude-4.0-Sonnet | 29.59 | 70.28 | 36.44 | 15.52 | 14.65 |
| Deepseek-R1 | 28.17 | 67.09 | 34.42 | 16.04 | 10.13 |
| **Code-Specialized LLMs** | | | | | |
| Qwen3-Coder-480B | 28.55 | 71.34 | 36.59 | 14.52 | 13.39 |
| Deepseek-Coder-V2 | 23.70 | 72.12 | 28.16 | 12.75 | 9.21 |

**Metrics:**
- **EX (Execution Accuracy):** Percentage of queries producing correct results
- **EM (Exact Match):** Percentage of syntactically valid queries that execute without errors

### Performance by Reasoning Type

| **Model** | **Physical (%)** | **Mathematical (%)** | **Commonsense (%)** | **Hypothetical (%)** |
|-----------|-----------------|-------------------|-------------------|-------------------|
| Chess-SQL + GPT-4o | 24.94 | 29.98 | **35.91** | **30.11** |
| GPT-4.1 | **25.41** | 29.57 | 35.25 | 29.59 |
| Claude-4.0-Sonnet | **30.70** | **31.38** | 29.91 | 29.59 |

### Key Findings

1. **Extremely Challenging:** Even the best method (Chess-SQL + GPT-4o) achieves only 33.20% execution accuracy, significantly lower than performance on Spider (>86%) and BIRD (>70%).

2. **Chain-of-Thought is Critical:** Models without CoT reasoning suffer dramatic performance drops (15-19% absolute decrease), confirming the importance of step-by-step logical deduction.

3. **Difficulty Scaling:** Performance drops sharply from Easy (36-40%) to Medium (14-16%) to Hard (9-15%) questions, indicating significant challenges in handling complex multi-step reasoning.

4. **Reasoning Type Impact:** Commonsense reasoning achieves the highest accuracy (~35%), while Physical and Mathematical reasoning remain most challenging (~25-30%).

---


## 📖 Citation

If you use LogicCat in your research, please cite our paper:

```bibtex
@article{liu2025logiccat,
  title={LogicCat: A Chain-of-Thought Text-to-SQL Benchmark for Multi-Domain Reasoning Challenges},
  author={Liu, Tao and Zan, Hongying and Li, Yifan and Zhang, Dixuan and Kong, Lulu and Liu, Haixin and Hou, Jiaming and Zheng, Aoze and Li, Rui and Qiao, Yiming and others},
  journal={arXiv preprint arXiv:2505.18744},
  year={2025}
}
```

---

## 🔗 Links

- **Paper:** [Arxiv](https://arxiv.org/abs/2505.18744) (To appear in AAAI 2026)
- **Contact:** taoliu01@zzu.edu.cn, xutao.mao@vanderbilt.edu, iehyzan@zzu.edu.cn

---

## 📄 License

This dataset is released under the [MIT License](LICENSE). Please respect the terms of use and cite appropriately.

---

## 🙏 Acknowledgments

This work was supported by Zhengzhou University, Vanderbilt University, and Wuhan University. We thank the 12 doctoral students who contributed 800 person-hours to data annotation and the 5 senior engineers who provided expert review. 

---

**Last Updated:** December 10, 2025. Revising 600 empty querys

