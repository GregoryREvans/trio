
    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=76
            \time 6/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 3/2
            ^ \markup {
                \override
                    #'(font-name . "STIXGeneral Bold")
                    "komm (i)"
                }
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"76" #"2" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #1 #0 #2 #0 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4

        }

        \context StaffGroup = "Staff Group"
        <<

            \context Staff = "Staff 1"
            {
                \tag #'voice1 {

                \context Voice = "Voice 1"
                {
                    % [Voice 1 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { "vn. I" }                                        %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Violin I"                                                 %! applying staff names and clefs
                    \clef "treble"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-two-syntonic-comma-down 
                    ds'''2.
                    :32
                    \mf
                    ^ \markup {
                        \center-align
                            -27
                        }
                    ^ \markup { st. }
                    ^ \markup { XFB. }
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a m.28 (ff)"
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-two-syntonic-comma-down 
                    ds'''2
                    :32

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-two-syntonic-comma-down 
                    ds'''4
                    :32
                    ^ \markup {
                        \center-align
                            -27
                        }
                    ^ \markup { norm. }
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''2
                    :32
                    ^ \markup {
                        \center-align
                            -27
                        }
                    ^ \markup { noise }
                    % [Voice 1 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''2.
                    :32
                    ^ \markup {
                        \center-align
                            -27
                        }
                    ^ \markup { norm. }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''2
                    :32
                    % [Voice 1 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''2.
                    :32
                    ^ \markup {
                        \center-align
                            -27
                        }
                    ^ \markup { XFB. }
                    % [Voice 1 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''1
                    :32
                    ^ \markup {
                        \center-align
                            -27
                        }
                    ^ \markup { norm. }
                    % [Voice 1 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''2.
                    :32
                    \ff
                    ^ \markup {
                        \center-align
                            -27
                        }
                    ^ \markup { noise }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''2
                    :32
                    \bar "||"

                }
                }

            }

            \context Staff = "Staff 2"
            {
                \tag #'voice2 {

                \context Voice = "Voice 2"
                {
                    % [Voice 2 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { "vn. II" }                                       %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Violin II"                                                %! applying staff names and clefs
                    \clef "treble"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    bs'2.
                    :32
                    \mf
                    ^ \markup {
                        \center-align
                            B+13
                        }
                    ^ \markup { st. }
                    ^ \markup { XFB. }
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a m.28 (ff)"
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    bs'2
                    :32

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''4
                    :32
                    ^ \markup {
                        \center-align
                            E♭+41
                        }
                    ^ \markup { norm. }
                    % [Voice 2 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''2
                    :32
                    ^ \markup {
                        \center-align
                            E♭+41
                        }
                    ^ \markup { noise }
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''2.
                    :32
                    ^ \markup {
                        \center-align
                            E♭+41
                        }
                    ^ \markup { norm. }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''2
                    :32
                    % [Voice 2 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''2.
                    :32
                    ^ \markup {
                        \center-align
                            E♭+41
                        }
                    ^ \markup { XFB. }
                    % [Voice 2 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''1
                    :32
                    ^ \markup {
                        \center-align
                            E♭+41
                        }
                    ^ \markup { norm. }
                    % [Voice 2 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''2.
                    :32
                    \ff
                    ^ \markup {
                        \center-align
                            E♭+41
                        }
                    ^ \markup { noise }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''2
                    :32
                    \bar "||"

                }
                }

            }

            \context Staff = "Staff 3"
            {
                \tag #'voice3 {

                \context Voice = "Voice 3"
                {
                    % [Voice 3 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { va. }                                            %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Viola"                                                    %! applying staff names and clefs
                    \clef "varC"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a2.
                    :32
                    \mf
                    ^ \markup {
                        \center-align
                            +4
                        }
                    ^ \markup { st. }
                    ^ \markup { XFB. }
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a m.28 (ff)"
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a2
                    :32

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a4
                    :32
                    ^ \markup {
                        \center-align
                            +4
                        }
                    ^ \markup { norm. }
                    % [Voice 3 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a2
                    :32
                    ^ \markup {
                        \center-align
                            +4
                        }
                    ^ \markup { noise }
                    % [Voice 3 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a2.
                    :32
                    ^ \markup {
                        \center-align
                            +4
                        }
                    ^ \markup { norm. }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a2
                    :32
                    % [Voice 3 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a2.
                    :32
                    ^ \markup {
                        \center-align
                            +4
                        }
                    ^ \markup { XFB. }
                    % [Voice 3 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a1
                    :32
                    ^ \markup {
                        \center-align
                            +4
                        }
                    ^ \markup { norm. }
                    % [Voice 3 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    cs'2.
                    :32
                    \ff
                    ^ \markup {
                        \center-align
                            C+41
                        }
                    ^ \markup { noise }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    cs'2
                    :32
                    \bar "||"

                }
                }

            }

            \context Staff = "Staff 4"
            {
                \tag #'voice4 {

                \context Voice = "Voice 4"
                {
                    % [Voice 4 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { vc. }                                            %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Violoncello"                                              %! applying staff names and clefs
                    \clef "bass"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2.
                    :32
                    \mf
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ^ \markup { st. }
                    ^ \markup { XFB. }
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a m.28 (ff)"
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    :32

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,4
                    :32
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ^ \markup { norm. }
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    :32
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ^ \markup { noise }
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    bs,2.
                    :32
                    ^ \markup {
                        \center-align
                            B+13
                        }
                    ^ \markup { norm. }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    bs,2
                    :32
                    % [Voice 4 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    bs,2.
                    :32
                    ^ \markup {
                        \center-align
                            B+13
                        }
                    ^ \markup { XFB. }
                    % [Voice 4 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,1
                    :32
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ^ \markup { norm. }
                    % [Voice 4 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2.
                    :32
                    \ff
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ^ \markup { noise }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    :32
                    \bar "||"

                }
                }

            }

        >>

    >>
