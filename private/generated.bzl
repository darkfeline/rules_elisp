# Copyright 2024 Philipp Stephani
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Generated file; do not edit.
# To regenerate, run
#
#    bazel run //private:generated.expanded.bzl
#
# and copy the output to //private:generated.bzl.

"""Internal generated definitions."""

# Starlark doesn’t have `chr` or `ord` functions, so we replicate them here.
# CHR maps ordinals to single-character strings, and ORD does the reverse.  This
# only works for single-byte characters.
CHR = ["\0", "\1", "\2", "\3", "\4", "\5", "\6", "\7", "\10", "\11", "\12", "\13", "\14", "\15", "\16", "\17", "\20", "\21", "\22", "\23", "\24", "\25", "\26", "\27", "\30", "\31", "\32", "\33", "\34", "\35", "\36", "\37", "\40", "\41", "\42", "\43", "\44", "\45", "\46", "\47", "\50", "\51", "\52", "\53", "\54", "\55", "\56", "\57", "\60", "\61", "\62", "\63", "\64", "\65", "\66", "\67", "\70", "\71", "\72", "\73", "\74", "\75", "\76", "\77", "\100", "\101", "\102", "\103", "\104", "\105", "\106", "\107", "\110", "\111", "\112", "\113", "\114", "\115", "\116", "\117", "\120", "\121", "\122", "\123", "\124", "\125", "\126", "\127", "\130", "\131", "\132", "\133", "\134", "\135", "\136", "\137", "\140", "\141", "\142", "\143", "\144", "\145", "\146", "\147", "\150", "\151", "\152", "\153", "\154", "\155", "\156", "\157", "\160", "\161", "\162", "\163", "\164", "\165", "\166", "\167", "\170", "\171", "\172", "\173", "\174", "\175", "\176", "\177", "\200", "\201", "\202", "\203", "\204", "\205", "\206", "\207", "\210", "\211", "\212", "\213", "\214", "\215", "\216", "\217", "\220", "\221", "\222", "\223", "\224", "\225", "\226", "\227", "\230", "\231", "\232", "\233", "\234", "\235", "\236", "\237", "\240", "\241", "\242", "\243", "\244", "\245", "\246", "\247", "\250", "\251", "\252", "\253", "\254", "\255", "\256", "\257", "\260", "\261", "\262", "\263", "\264", "\265", "\266", "\267", "\270", "\271", "\272", "\273", "\274", "\275", "\276", "\277", "\300", "\301", "\302", "\303", "\304", "\305", "\306", "\307", "\310", "\311", "\312", "\313", "\314", "\315", "\316", "\317", "\320", "\321", "\322", "\323", "\324", "\325", "\326", "\327", "\330", "\331", "\332", "\333", "\334", "\335", "\336", "\337", "\340", "\341", "\342", "\343", "\344", "\345", "\346", "\347", "\350", "\351", "\352", "\353", "\354", "\355", "\356", "\357", "\360", "\361", "\362", "\363", "\364", "\365", "\366", "\367", "\370", "\371", "\372", "\373", "\374", "\375", "\376", "\377"]
ORD = {"\0": 0, "\1": 1, "\2": 2, "\3": 3, "\4": 4, "\5": 5, "\6": 6, "\7": 7, "\10": 8, "\11": 9, "\12": 10, "\13": 11, "\14": 12, "\15": 13, "\16": 14, "\17": 15, "\20": 16, "\21": 17, "\22": 18, "\23": 19, "\24": 20, "\25": 21, "\26": 22, "\27": 23, "\30": 24, "\31": 25, "\32": 26, "\33": 27, "\34": 28, "\35": 29, "\36": 30, "\37": 31, "\40": 32, "\41": 33, "\42": 34, "\43": 35, "\44": 36, "\45": 37, "\46": 38, "\47": 39, "\50": 40, "\51": 41, "\52": 42, "\53": 43, "\54": 44, "\55": 45, "\56": 46, "\57": 47, "\60": 48, "\61": 49, "\62": 50, "\63": 51, "\64": 52, "\65": 53, "\66": 54, "\67": 55, "\70": 56, "\71": 57, "\72": 58, "\73": 59, "\74": 60, "\75": 61, "\76": 62, "\77": 63, "\100": 64, "\101": 65, "\102": 66, "\103": 67, "\104": 68, "\105": 69, "\106": 70, "\107": 71, "\110": 72, "\111": 73, "\112": 74, "\113": 75, "\114": 76, "\115": 77, "\116": 78, "\117": 79, "\120": 80, "\121": 81, "\122": 82, "\123": 83, "\124": 84, "\125": 85, "\126": 86, "\127": 87, "\130": 88, "\131": 89, "\132": 90, "\133": 91, "\134": 92, "\135": 93, "\136": 94, "\137": 95, "\140": 96, "\141": 97, "\142": 98, "\143": 99, "\144": 100, "\145": 101, "\146": 102, "\147": 103, "\150": 104, "\151": 105, "\152": 106, "\153": 107, "\154": 108, "\155": 109, "\156": 110, "\157": 111, "\160": 112, "\161": 113, "\162": 114, "\163": 115, "\164": 116, "\165": 117, "\166": 118, "\167": 119, "\170": 120, "\171": 121, "\172": 122, "\173": 123, "\174": 124, "\175": 125, "\176": 126, "\177": 127, "\200": 128, "\201": 129, "\202": 130, "\203": 131, "\204": 132, "\205": 133, "\206": 134, "\207": 135, "\210": 136, "\211": 137, "\212": 138, "\213": 139, "\214": 140, "\215": 141, "\216": 142, "\217": 143, "\220": 144, "\221": 145, "\222": 146, "\223": 147, "\224": 148, "\225": 149, "\226": 150, "\227": 151, "\230": 152, "\231": 153, "\232": 154, "\233": 155, "\234": 156, "\235": 157, "\236": 158, "\237": 159, "\240": 160, "\241": 161, "\242": 162, "\243": 163, "\244": 164, "\245": 165, "\246": 166, "\247": 167, "\250": 168, "\251": 169, "\252": 170, "\253": 171, "\254": 172, "\255": 173, "\256": 174, "\257": 175, "\260": 176, "\261": 177, "\262": 178, "\263": 179, "\264": 180, "\265": 181, "\266": 182, "\267": 183, "\270": 184, "\271": 185, "\272": 186, "\273": 187, "\274": 188, "\275": 189, "\276": 190, "\277": 191, "\300": 192, "\301": 193, "\302": 194, "\303": 195, "\304": 196, "\305": 197, "\306": 198, "\307": 199, "\310": 200, "\311": 201, "\312": 202, "\313": 203, "\314": 204, "\315": 205, "\316": 206, "\317": 207, "\320": 208, "\321": 209, "\322": 210, "\323": 211, "\324": 212, "\325": 213, "\326": 214, "\327": 215, "\330": 216, "\331": 217, "\332": 218, "\333": 219, "\334": 220, "\335": 221, "\336": 222, "\337": 223, "\340": 224, "\341": 225, "\342": 226, "\343": 227, "\344": 228, "\345": 229, "\346": 230, "\347": 231, "\350": 232, "\351": 233, "\352": 234, "\353": 235, "\354": 236, "\355": 237, "\356": 238, "\357": 239, "\360": 240, "\361": 241, "\362": 242, "\363": 243, "\364": 244, "\365": 245, "\366": 246, "\367": 247, "\370": 248, "\371": 249, "\372": 250, "\373": 251, "\374": 252, "\375": 253, "\376": 254, "\377": 255}
