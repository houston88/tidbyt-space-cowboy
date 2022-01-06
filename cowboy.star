load("render.star", "render")
load("encoding/base64.star", "base64")

IMAGE =  """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"""
IMAGE_ICON = base64.decode(IMAGE)

def main():
    return render.Root(
        child = render.Stack(
            children = [
                render.Image(src=IMAGE_ICON),
                render.Box(
                    render.Row(
                        expanded=True,
                        main_align="space_evenly",
                        cross_align="center",
                        children = [
                            render.Marquee(
                                width=64,
                                child=render.Text(
                                    content="See you later... Space Cowboy",
                                    font="6x13",
                                    color="#dcd",
                                ),
                                offset_start=5,
                                offset_end=34,
                            )
                        ],
                    ),
                )
            ]
        )
    )
