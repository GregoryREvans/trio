import pathlib

import abjad
import baca
import evans
import quicktions

from adumbration.materials.pitch import chorale_pitch_handler, clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_08.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_08.convert_timespans import (
    handler_commands,
    rhythm_commands,
)

bar_literal = abjad.LilyPondLiteral(r'\bar ".|:"', format_slot="before")


maker = evans.SegmentMaker(
    instruments=insts,
    names=[
        '"Violin I"',
        '"Violin II"',
        '"Viola"',
        '"Violoncello"',
    ],
    abbreviations=[
        '"vn. I"',
        '"vn. II"',
        '"va."',
        '"vc."',
    ],
    name_staves=True,
    commands=[
        rhythm_commands,
        evans.call(
            "score",
            evans.SegmentMaker.transform_brackets,
            abjad.select().components(abjad.Score),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands,
        evans.call(
            "vertical",
            chorale_pitch_handler,
            evans.return_vertical_moment_ties,
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), quicktions.Fraction(460, 9)),
                left_note=(abjad.Note("c'4")),
                right_note=(abjad.Note("c'8.")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.leaf(0),
        ),
        evans.attach("Voice 1", bar_literal, baca.leaf(0)),
        evans.attach("Voice 2", bar_literal, baca.leaf(0)),
        evans.attach("Voice 3", bar_literal, baca.leaf(0)),
        evans.attach("Voice 4", bar_literal, baca.leaf(0)),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mp"),
            baca.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)",
                format_slot="absolute_before",
            ),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation("snappizzicato"),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup("slow bow", direction=abjad.Up),
            baca.leaf(2),
        ),
        evans.attach(
            "Voice 4",
            abjad.StemTremolo(32),
            baca.leaf(2),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.leaf(2),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r"^ \markup { clt. \raise #0.75 \baca-circle-very-wide-markup }",
                format_slot="after",
            ),
            baca.leaf(3),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.leaf(3),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(
                r"^ \markup { \raise #0.75 \baca-circle-very-wide-markup }",
                format_slot="after",
            ),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(
                r"^ \markup { clt. \raise #0.75 \baca-circle-wide-poss-markup }",
                format_slot="after",
            ),
            baca.leaf(2),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("½clt.", direction=abjad.Up),
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup.column(
                [
                    abjad.Markup("Anamorphosis/Calligrapher").caps().box(),
                    abjad.Markup("[Ombreggiato (ii)]").caps(),
                ],
                direction=abjad.Up,
            ).override(("font-name", "STIXGeneral Bold")),
            baca.leaf(0),
        ),
        # evans.attach(
        #     "Global Context",
        #     abjad.LilyPondLiteral(r"\break", format_slot="absolute_before"),
        #     baca.leaf(2),
        # ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    clef_handlers=clef_handlers,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_08",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline=":|.",
    tempo=((1, 4), 38),
    rehearsal_mark=r"x4",
    page_break_counts=[90],
    fermata="scripts.ufermata",
)

maker.build_segment()
# maker._make_sc_file()
