const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const io = init.io;
    const gpa = init.gpa;

    const file = try std.Io.Dir.cwd().openFile(io, "lab/sample.zig", .{});
    defer file.close(io);

    var buf: [4096]u8 = undefined;
    var file_reader = file.reader(io, &buf);

    const source = try std.zig.readSourceFileToEndAlloc(gpa, &file_reader);
    defer gpa.free(source);

    for (source) |b| {
        std.debug.print("{d}\n", .{b});
    }
}
