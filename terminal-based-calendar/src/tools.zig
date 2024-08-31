const std = @import("std");

pub const Console = struct {

    // Writes a formatted string to stdout.
    pub fn writeLine(comptime format: []const u8, args: anytype) !void {
        const stdout = std.io.getStdOut().writer();
        try stdout.print(format, args);
    }
};
