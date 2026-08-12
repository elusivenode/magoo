const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    const n = args.len;

    if (n == 1) {
        std.debug.print("usage: magoo args[1] {{more args}}\n", .{});
    } else if (std.mem.eql(u8, args[1], "version")) {
        std.debug.print("args[1] checked and is \"version\"\n", .{});
    } else {
        std.debug.print("args[1] which was not \"version\"\n", .{});
    }
}
