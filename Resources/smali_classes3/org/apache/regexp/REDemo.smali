.class public Lorg/apache/regexp/REDemo;
.super Ljava/applet/Applet;
.source "REDemo.java"

# interfaces
.implements Ljava/awt/event/TextListener;


# instance fields
.field compiler:Lorg/apache/regexp/REDebugCompiler;

.field fieldMatch:Ljava/awt/TextField;

.field fieldRE:Ljava/awt/TextField;

.field outMatch:Ljava/awt/TextArea;

.field outRE:Ljava/awt/TextArea;

.field r:Lorg/apache/regexp/RE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/applet/Applet;-><init>()V

    .line 76
    new-instance v0, Lorg/apache/regexp/RE;

    invoke-direct {v0}, Lorg/apache/regexp/RE;-><init>()V

    iput-object v0, p0, Lorg/apache/regexp/REDemo;->r:Lorg/apache/regexp/RE;

    .line 77
    new-instance v0, Lorg/apache/regexp/REDebugCompiler;

    invoke-direct {v0}, Lorg/apache/regexp/REDebugCompiler;-><init>()V

    iput-object v0, p0, Lorg/apache/regexp/REDemo;->compiler:Lorg/apache/regexp/REDebugCompiler;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    .line 247
    new-instance p0, Ljavax/swing/JFrame;

    const-string v0, "RE Demo"

    invoke-direct {p0, v0}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 249
    new-instance v0, Lorg/apache/regexp/REDemo$1;

    invoke-direct {v0}, Lorg/apache/regexp/REDemo$1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/awt/Window;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 256
    invoke-virtual {p0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/awt/FlowLayout;

    invoke-direct {v1}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 258
    new-instance v1, Lorg/apache/regexp/REDemo;

    invoke-direct {v1}, Lorg/apache/regexp/REDemo;-><init>()V

    .line 259
    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 260
    invoke-virtual {v1}, Lorg/apache/regexp/REDemo;->init()V

    .line 261
    invoke-virtual {p0}, Ljava/awt/Window;->pack()V

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0, v0}, Ljava/awt/Component;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 9

    .line 93
    new-instance v0, Ljava/awt/GridBagLayout;

    invoke-direct {v0}, Ljava/awt/GridBagLayout;-><init>()V

    .line 94
    invoke-virtual {p0, v0}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 95
    new-instance v1, Ljava/awt/GridBagConstraints;

    invoke-direct {v1}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 96
    new-instance v2, Ljava/awt/Insets;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v3, v3, v3}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v2, v1, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    const/16 v2, 0xd

    .line 97
    iput v2, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 98
    new-instance v3, Ljava/awt/Label;

    const-string v4, "Regular expression:"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    const/4 v3, 0x0

    .line 99
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridy:I

    const/16 v4, 0x11

    .line 100
    iput v4, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 101
    new-instance v6, Ljava/awt/TextField;

    const-string v7, "\\[([:javastart:][:javapart:]*)\\]"

    const/16 v8, 0x28

    invoke-direct {v6, v7, v8}, Ljava/awt/TextField;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lorg/apache/regexp/REDemo;->fieldRE:Ljava/awt/TextField;

    invoke-virtual {p0, v6}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 102
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridx:I

    const/4 v3, -0x1

    .line 103
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 104
    iput v2, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 105
    new-instance v2, Ljava/awt/Label;

    const-string v6, "String:"

    invoke-direct {v2, v6, v5}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    const/4 v2, 0x1

    .line 106
    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 107
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridx:I

    .line 108
    iput v4, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 109
    new-instance v4, Ljava/awt/TextField;

    const-string v6, "aaa([foo])aaa"

    invoke-direct {v4, v6, v8}, Ljava/awt/TextField;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lorg/apache/regexp/REDemo;->fieldMatch:Ljava/awt/TextField;

    invoke-virtual {p0, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 110
    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 111
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridx:I

    .line 112
    iput v2, v1, Ljava/awt/GridBagConstraints;->fill:I

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 113
    iput-wide v6, v1, Ljava/awt/GridBagConstraints;->weighty:D

    .line 114
    iput-wide v6, v1, Ljava/awt/GridBagConstraints;->weightx:D

    .line 115
    new-instance v2, Ljava/awt/TextArea;

    invoke-direct {v2}, Ljava/awt/TextArea;-><init>()V

    iput-object v2, p0, Lorg/apache/regexp/REDemo;->outRE:Ljava/awt/TextArea;

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 116
    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 117
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridx:I

    .line 118
    new-instance v2, Ljava/awt/TextArea;

    invoke-direct {v2}, Ljava/awt/TextArea;-><init>()V

    iput-object v2, p0, Lorg/apache/regexp/REDemo;->outMatch:Ljava/awt/TextArea;

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 121
    iget-object v0, p0, Lorg/apache/regexp/REDemo;->fieldRE:Ljava/awt/TextField;

    invoke-virtual {v0, p0}, Ljava/awt/TextComponent;->addTextListener(Ljava/awt/event/TextListener;)V

    .line 122
    iget-object v0, p0, Lorg/apache/regexp/REDemo;->fieldMatch:Ljava/awt/TextField;

    invoke-virtual {v0, p0}, Ljava/awt/TextComponent;->addTextListener(Ljava/awt/event/TextListener;)V

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lorg/apache/regexp/REDemo;->textValueChanged(Ljava/awt/event/TextEvent;)V

    return-void
.end method

.method sayMatch(Ljava/lang/String;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/regexp/REDemo;->outMatch:Ljava/awt/TextArea;

    invoke-virtual {v0, p1}, Ljava/awt/TextComponent;->setText(Ljava/lang/String;)V

    return-void
.end method

.method sayRE(Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/regexp/REDemo;->outRE:Ljava/awt/TextArea;

    invoke-virtual {v0, p1}, Ljava/awt/TextComponent;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public textValueChanged(Ljava/awt/event/TextEvent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/regexp/REDemo;->fieldRE:Ljava/awt/TextField;

    if-ne p1, v0, :cond_1

    .line 234
    :cond_0
    iget-object p1, p0, Lorg/apache/regexp/REDemo;->fieldRE:Ljava/awt/TextField;

    invoke-virtual {p1}, Ljava/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/regexp/REDemo;->updateRE(Ljava/lang/String;)V

    .line 238
    :cond_1
    iget-object p1, p0, Lorg/apache/regexp/REDemo;->fieldMatch:Ljava/awt/TextField;

    invoke-virtual {p1}, Ljava/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/regexp/REDemo;->updateMatch(Ljava/lang/String;)V

    return-void
.end method

.method throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method updateMatch(Ljava/lang/String;)V
    .locals 2

    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/apache/regexp/REDemo;->r:Lorg/apache/regexp/RE;

    invoke-virtual {v0, p1}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 203
    const-string p1, "Matches.\n\n"

    const/4 v0, 0x0

    .line 206
    :goto_0
    iget-object v1, p0, Lorg/apache/regexp/REDemo;->r:Lorg/apache/regexp/RE;

    invoke-virtual {v1}, Lorg/apache/regexp/RE;->getParenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 210
    invoke-virtual {p0, p1}, Lorg/apache/regexp/REDemo;->sayMatch(Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, "$"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/regexp/REDemo;->r:Lorg/apache/regexp/RE;

    invoke-virtual {v1, v0}, Lorg/apache/regexp/RE;->getParen(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    const-string p1, "Does not match"

    invoke-virtual {p0, p1}, Lorg/apache/regexp/REDemo;->sayMatch(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 220
    invoke-virtual {p0, p1}, Lorg/apache/regexp/REDemo;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/regexp/REDemo;->sayMatch(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method updateRE(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 170
    :try_start_0
    iget-object v1, p0, Lorg/apache/regexp/REDemo;->r:Lorg/apache/regexp/RE;

    iget-object v2, p0, Lorg/apache/regexp/REDemo;->compiler:Lorg/apache/regexp/REDebugCompiler;

    invoke-virtual {v2, p1}, Lorg/apache/regexp/RECompiler;->compile(Ljava/lang/String;)Lorg/apache/regexp/REProgram;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/regexp/RE;->setProgram(Lorg/apache/regexp/REProgram;)V

    .line 173
    new-instance p1, Ljava/io/CharArrayWriter;

    invoke-direct {p1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 174
    iget-object v1, p0, Lorg/apache/regexp/REDemo;->compiler:Lorg/apache/regexp/REDebugCompiler;

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2}, Lorg/apache/regexp/REDebugCompiler;->dumpProgram(Ljava/io/PrintWriter;)V

    .line 175
    invoke-virtual {p1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/regexp/REDemo;->sayRE(Ljava/lang/String;)V

    .line 176
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 185
    iget-object v1, p0, Lorg/apache/regexp/REDemo;->r:Lorg/apache/regexp/RE;

    invoke-virtual {v1, v0}, Lorg/apache/regexp/RE;->setProgram(Lorg/apache/regexp/REProgram;)V

    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/regexp/REDemo;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/regexp/REDemo;->sayRE(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    iget-object v1, p0, Lorg/apache/regexp/REDemo;->r:Lorg/apache/regexp/RE;

    invoke-virtual {v1, v0}, Lorg/apache/regexp/RE;->setProgram(Lorg/apache/regexp/REProgram;)V

    .line 181
    invoke-virtual {p0, p1}, Lorg/apache/regexp/REDemo;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/regexp/REDemo;->sayRE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
