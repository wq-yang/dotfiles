local status_ok, bufdel = pcall(require, "bufdel")
if not status_ok then
  return
end

bufdel.setup {
  next = 'browser-like',  -- or 'cycle'
  quit = false,
}

