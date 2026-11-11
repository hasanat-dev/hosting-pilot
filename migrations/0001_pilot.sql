-- Synthetic managed-hosting pilot. Stores only the signed-in account ID; no names or contact details.
CREATE TABLE pilot_checks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE INDEX idx_pilot_checks_user ON pilot_checks(user_id);
