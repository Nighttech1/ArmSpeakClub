---
name: Heritage Community
colors:
  surface: '#fcf9f3'
  surface-dim: '#dcdad4'
  surface-bright: '#fcf9f3'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f6f3ed'
  surface-container: '#f0eee8'
  surface-container-high: '#ebe8e2'
  surface-container-highest: '#e5e2dc'
  on-surface: '#1c1c18'
  on-surface-variant: '#56423a'
  inverse-surface: '#31312d'
  inverse-on-surface: '#f3f0ea'
  outline: '#897268'
  outline-variant: '#ddc1b5'
  surface-tint: '#9d430c'
  primary: '#9a4109'
  on-primary: '#ffffff'
  primary-container: '#ba5822'
  on-primary-container: '#fffbff'
  inverse-primary: '#ffb694'
  secondary: '#13629b'
  on-secondary: '#ffffff'
  secondary-container: '#83c0ff'
  on-secondary-container: '#004e80'
  tertiary: '#7c5400'
  on-tertiary: '#ffffff'
  tertiary-container: '#9b6b04'
  on-tertiary-container: '#fffbff'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#ffdbcc'
  primary-fixed-dim: '#ffb694'
  on-primary-fixed: '#351000'
  on-primary-fixed-variant: '#7b2f00'
  secondary-fixed: '#d0e4ff'
  secondary-fixed-dim: '#9acbff'
  on-secondary-fixed: '#001d34'
  on-secondary-fixed-variant: '#004a79'
  tertiary-fixed: '#ffdeae'
  tertiary-fixed-dim: '#f8bc58'
  on-tertiary-fixed: '#281900'
  on-tertiary-fixed-variant: '#604100'
  background: '#fcf9f3'
  on-background: '#1c1c18'
  surface-variant: '#e5e2dc'
typography:
  display-lg:
    fontFamily: Libre Caslon Text
    fontSize: 48px
    fontWeight: '700'
    lineHeight: 56px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Libre Caslon Text
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 40px
  headline-md:
    fontFamily: Libre Caslon Text
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
  body-lg:
    fontFamily: Be Vietnam Pro
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Be Vietnam Pro
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  label-sm:
    fontFamily: Work Sans
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.05em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  unit: 4px
  xs: 4px
  sm: 8px
  md: 16px
  lg: 24px
  xl: 40px
  container-max: 1200px
  gutter: 24px
  margin-mobile: 16px
---

## Brand & Style
The visual identity of this design system centers on the concept of "The Upper Room" (*Vernatun*)—a space of intellectual gathering, warmth, and cultural preservation. The brand personality is scholarly yet deeply accessible, bridging the gap between historical Armenian legacy and a vibrant, modern community. 

The design style is **Modern Corporate with Tactile Heritage influences**. It utilizes clean, structural layouts to ensure usability, while softening the experience through organic textures, parchment-inspired backgrounds, and a color palette derived from the Armenian highlands. The goal is to evoke the feeling of a well-loved library or a sun-drenched courtyard where knowledge is shared freely.

## Colors
The palette is grounded in "Terracotta," representing the volcanic tuff stone used in Armenian architecture. This is balanced by "Deep Azure," a nod to the high-altitude waters of Lake Sevan, providing a professional and calming counterpoint to the warmer earth tones.

"Parchment" serves as the primary background color, replacing stark whites to reduce eye strain and provide an "academic" feel. "Sun Gold" is reserved for highlights, interactive states, and celebratory accents. Typography should primarily use "Ink"—a deep, warm brown-black—to maintain high legibility while feeling softer than pure black.

## Typography
This design system employs a dual-font strategy to balance heritage and modernity. **Libre Caslon Text** is used for headings; its classical proportions and elegant serifs echo traditional typesetting and Armenian manuscript traditions. For body text, **Be Vietnam Pro** offers a contemporary, humanist touch that ensures readability across digital platforms.

For functional UI elements like navigation and metadata, **Work Sans** provides a grounded, professional clarity. Use tight letter-spacing for large display headers to create an editorial feel, and increased line-height for body text to mimic the comfortable reading experience of a physical book.

## Layout & Spacing
The layout follows a **Fixed Grid** philosophy on desktop to create a centered, intentional reading experience similar to a broadsheet or a journal. A 12-column grid is used with generous 24px gutters to allow the "Parchment" background to provide ample breathing room.

On mobile devices, the system transitions to a fluid single-column layout with 16px side margins. Spacing should follow a strict 4px baseline rhythm. Information-dense sections (like event calendars) should use "sm" and "md" spacing, while storytelling or long-form content should utilize "lg" and "xl" spacing to elevate the sense of importance.

## Elevation & Depth
Depth is created through **Tonal Layers** and subtle, warm shadows. Instead of aggressive drop shadows, this design system uses soft, diffused "Ambient Shadows" tinted with the "Terracotta" or "Ink" hues at very low opacities (5-10%).

Surface containers (like cards or modals) should sit one level above the parchment background using a slightly lighter off-white or a very thin 1px border in "Clay Muted." This mimics the layering of paper and documents on a desk. Avoid heavy blurs; focus on structural stacking to maintain the "academic" and grounded aesthetic.

## Shapes
The shape language is **Soft (Level 1)**. Elements like buttons and input fields use a subtle 4px (0.25rem) corner radius. This choice avoids the clinical feel of sharp corners while remaining more formal and "structured" than playful, fully rounded designs.

Large containers and cards may use a slightly more pronounced "rounded-lg" (8px) to distinguish them from functional UI components. This balance suggests a community that is organized and established, yet welcoming and modern.

## Components
- **Buttons:** Primary buttons use a solid "Terracotta" fill with white "Be Vietnam Pro" text. Secondary buttons use "Deep Azure" outlines. Tertiary buttons are text-only with a "Sun Gold" underline on hover.
- **Cards:** Cards should have a "Clay Muted" 1px border and a very subtle warm shadow. Backgrounds of cards should be pure white to pop against the "Parchment" page background.
- **Input Fields:** Use "Work Sans" for labels. The focus state should utilize a "Deep Azure" 2px border, providing a clear visual cue that contrasts with the earthy tones of the content.
- **Chips/Tags:** Used for categories (e.g., "History," "Language," "Art"). These should have a light "Sun Gold" background with "Ink" text to denote activity and vibrancy.
- **Calendars:** Since meetings are a core part of the club, calendars should be highly structural, using "Ink" for dates and "Deep Azure" dots to indicate scheduled sessions, mimicking the clean layout seen in the reference schedule.