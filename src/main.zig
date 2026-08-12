const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const version = "0.1.0";
    const args = try init.minimal.args.toSlice(init.arena.allocator());

    if (args.len == 1) {
        std.debug.print("usage: magoo <command>\n", .{});
    } else if (std.mem.eql(u8, args[1], "version")) {
        std.debug.print("magoo version {s}\n", .{version});
    } else {
        std.debug.print("unknown command: {s}\n", .{args[1]});
    }
}
