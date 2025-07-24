export async function PreToolUse({ toolUseSpec, env }) {
  if (env.CLAUDE_AUTO_ACCEPT_ENABLED === "true") {
    return { decision: "approve" }; // ✅ Automatically allow everything
  }
  return { decision: "unsure" }; // ❓ Ask for confirmation if not in auto mode
}
