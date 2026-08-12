const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    const n = args.len;

    if (n == 1) {
        std.debug.print("magoo called with {d} args\n", .{n});
    } else {
        std.debug.print("safe to check args[1] which was {s}\n", .{args[1]});
    }
}
