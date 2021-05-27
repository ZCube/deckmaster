package main

import (
	"image"
	"log"
	"strconv"
	"time"

	"github.com/muesli/streamdeck"
)

type DateWidget struct {
	BaseWidget
}

func (w *DateWidget) Update(dev *streamdeck.Device) {
	const margin = 4
	size := int(dev.Pixels)
	img := image.NewRGBA(image.Rect(0, 0, size, size))
	height := size - (margin * 2)
	pt := (float64(height) / 3.0) * 72.0 / float64(dev.DPI)

	t := time.Now()
	day := t.Day()
	month := t.Month().String()
	year := t.Year()

	drawString(img, image.Rectangle{image.Pt(0, margin), image.Pt(size, margin+(height/3))},
		ttfBoldFont,
		strconv.Itoa(day),
		pt,
		image.Pt(-1, -1))
	drawString(img, image.Rectangle{image.Pt(0, (height/3)+margin), image.Pt(size, margin+(height/3)*2)},
		ttfFont,
		month,
		pt,
		image.Pt(-1, -1))
	drawString(img, image.Rectangle{image.Pt(0, (height/3)*2+margin), image.Pt(size, margin+height)},
		ttfThinFont,
		strconv.Itoa(year),
		pt,
		image.Pt(-1, -1))

	err := dev.SetImage(w.key, img)
	if err != nil {
		log.Fatal(err)
	}
}