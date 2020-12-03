import os

class marksdb:
	def __init__(self, filename=''):
		self.filename = filename
		if os.path.exists(filename):
			file = open(filename)
			self.values = eval(file.read())
		else:
			self.values = {}
	def add_id(self, sid):
		try:
			temp = self.values[sid]
		except:
			self.values[sid] = {
				'sem1': {   'iat1': {'marks':[]},
							'iat2': {'marks':[]},
							'iat3': {'marks':[]},
							'model': {'marks':[]},
							'sub': [],
						},
				'sem2': {   'iat1': {'marks':[]},
							'iat2': {'marks':[]},
							'iat3': {'marks':[]},
							'model': {'marks':[]},
							'sub': [],
						},
				'sem3': {   'iat1': {'marks':[]},
							'iat2': {'marks': []},
							
							'iat3': {'marks':[]},
							'model': {'marks':[]},
							'sub': [],
						},
				'sem4': {   'iat1': {'marks':[]},
							'iat2': {'marks':[]},
							'iat3': {'marks':[]},
							'model': {'marks':[]},
							'sub': [],
						},
				'sem5': {   'iat1': {'marks':[]},
							'iat2': {'marks':[]},
							'iat3': {'marks':[]},
							'model': {'marks':[]},
							'sub': [],
						},
				'sem6': {   'iat1': {'marks':[]},
							'iat2': {'marks':[]},
							'iat3': {'marks':[]},
							'model': {'marks':[]},
							'sub': [],
						},
				'sem7': {   'iat1': {'marks':[]},
							'iat2': {'marks':[]},
							'iat3': {'marks':[]},
							'model': {'marks':[]},
							'sub': [],
						},
				'sem8': {   'iat1': {'marks':[]},
							'iat2': {'marks':[]},
							'iat3': {'marks':[]},
							'model': {'marks':[]},
							'sub': [],
						},
						}
	def commit(self):
		file = open(self.filename, "w")
		file.write(str(self.values))
		file.close()

class attendancedb:
	def __init__(self, filename=''):
		self.filename = filename
		if os.path.exists(filename):
			file = open(filename)
			self.values = eval(file.read())
		else:
			self.values = {}
	
	def commit(self):
		file = open(self.filename, "w")
		file.write(str(self.values))
		file.close()

	def add_id(self, id):
		self.values[id] =  {'sem1': {'present': 0, "absent": 0, "od": 0, "total": 0},
                     		'sem2': {'present': 0, "absent": 0, "od": 0, "total": 0},
							'sem3': {'present': 0, "absent": 0, "od": 0, "total": 0},
							'sem4': {'present': 0, "absent": 0, "od": 0, "total": 0},
							'sem5': {'present': 0, "absent": 0, "od": 0, "total": 0},
							'sem6': {'present': 0, "absent": 0, "od": 0, "total": 0},
							'sem7': {'present': 0, "absent": 0, "od": 0, "total": 0},
							'sem8': {'present': 0, "absent": 0, "od": 0, "total": 0},
						}
		
