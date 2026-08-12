const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    const n = args.len;
    std.debug.print("magoo called with {d} args\n", .{n});
}
