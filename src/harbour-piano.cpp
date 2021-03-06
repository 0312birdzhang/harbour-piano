/*
  Copyright (C) 2013 Jolla Ltd.
  Contact: Thomas Perl <thomas.perl@jollamobile.com>
  All rights reserved.

  You may use this file under the terms of BSD license as follows:

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Jolla Ltd nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#include <QtQuick>
<<<<<<< HEAD
#endif
=======
#include <QQuickView>
#include <sailfishapp.h>
#include <QGuiApplication>
#include <QQmlContext>
//#include <QtDeclarative/qdeclarative.h>
#include "qmlpiano.hpp"

void Piano::noteOn(int keyIndex)
{
    unsigned char noteOn = 144; // Note On, first channel
    unsigned char velocity = 100;

    sendNoteMessage(noteOn, keyIndex, velocity);
}

void Piano::noteOff(int keyIndex)
{
    unsigned char noteOff = 128; // Note Off, first channel
    unsigned char velocity = 100;

    sendNoteMessage(noteOff, keyIndex, velocity);
}

void Piano::initMIDI()
{
    // Initialize MIDI object
    midiOut_ = new RtMidiOut("QMLPiano Out");

    // If available, open first MIDI port and get its name
    if(midiOut_->getPortCount() == 0)
    {
        portName_ = "Unavailable";
    }
    else
    {
        midiOut_->openPort();
        portName_ = midiOut_->getPortName().c_str();
    }
}

void Piano::cleanupMIDI()
{
    // Close port
    midiOut_->closePort();

    // Clean up MIDI object
    delete midiOut_;
}

int Piano::key2midi(int index)
{
    // Calculate MIDI note value
    int midiNote = (octave_ + 5) * 12 + index;

    // Ensure values of MIDI note being standard
    if(midiNote < 0)
        midiNote = 0;
    else if(midiNote > 127)
        midiNote = 127;

    return midiNote;
}
>>>>>>> cf91635141d40f94bc5fb1cc8c9d7ecbfc95a4ec

#include <sailfishapp.h>


int main(int argc, char *argv[])
{
<<<<<<< HEAD
   return SailfishApp::main(argc, argv);
=======
    QGuiApplication *app = SailfishApp::application(argc, argv);
    qmlRegisterType<Piano>("QMLPiano", 1, 0, "Piano");
    QScopedPointer<QQuickView> view(SailfishApp::createView());
    view->setSource(SailfishApp::pathTo("qml/harbour-piano.qml"));
    view->show();

    return app->exec();
>>>>>>> cf91635141d40f94bc5fb1cc8c9d7ecbfc95a4ec
}

