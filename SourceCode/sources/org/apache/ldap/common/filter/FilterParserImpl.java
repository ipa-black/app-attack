package org.apache.ldap.common.filter;

import antlr.LexerSharedInputState;
import antlr.RecognitionException;
import antlr.TokenStreamException;
import antlr.TokenStreamSelector;
import java.io.IOException;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.text.ParseException;
import org.apache.ldap.common.util.StringTools;
/* loaded from: classes3.dex */
public class FilterParserImpl implements FilterParser {
    private AntlrFilterLexer lexer;
    private AntlrFilterParser parser;
    private PipedOutputStream parserPipe;
    private TokenStreamSelector selector;
    private LexerSharedInputState state;
    private AntlrFilterValueLexer valueLexer;
    private AntlrFilterValueParser valueParser;

    public FilterParserImpl() {
        init();
    }

    private synchronized void init() {
        this.parserPipe = new PipedOutputStream();
        PipedInputStream pipedInputStream = new PipedInputStream();
        try {
            this.parserPipe.connect(pipedInputStream);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        this.state = new LexerSharedInputState(pipedInputStream);
        this.lexer = new AntlrFilterLexer(this.state);
        this.valueLexer = new AntlrFilterValueLexer(this.state);
        TokenStreamSelector tokenStreamSelector = new TokenStreamSelector();
        this.selector = tokenStreamSelector;
        tokenStreamSelector.addInputStream(this.lexer, AntlrFilterLexer.SELECTOR_KEY);
        this.selector.addInputStream(this.valueLexer, AntlrFilterValueLexer.SELECTOR_KEY);
        this.selector.select(this.lexer);
        AntlrFilterParser antlrFilterParser = new AntlrFilterParser(this.selector);
        this.parser = antlrFilterParser;
        antlrFilterParser.setSelector(this.selector);
        this.parser.setValueLexer(this.valueLexer);
        this.parser.setValueParser(this.valueParser);
        AntlrFilterValueParser antlrFilterValueParser = new AntlrFilterValueParser(this.selector);
        this.valueParser = antlrFilterValueParser;
        antlrFilterValueParser.setSelector(this.selector);
        this.valueParser.setLexer(this.lexer);
        this.parser.setValueParser(this.valueParser);
    }

    @Override // org.apache.ldap.common.filter.FilterParser
    public synchronized ExprNode parse(String str) throws ParseException, IOException {
        if (str != null) {
            if (!str.trim().equals("")) {
                if (str.indexOf("**") > -1) {
                    str = StringTools.trimConsecutiveToOne(str, '*');
                }
                this.parserPipe.write(str.getBytes());
                this.parserPipe.write(10);
                this.parserPipe.flush();
                try {
                    ExprNode filter = this.parser.filter();
                    this.state.reset();
                    this.selector.select(this.lexer);
                    return filter;
                } catch (RecognitionException e2) {
                    String stringBuffer = new StringBuffer().append(new StringBuffer("Parser failure on filter:\n\t").append(str).toString()).append("\nAntlr exception trace:\n").append(e2.getMessage()).toString();
                    init();
                    throw new ParseException(stringBuffer, e2.getColumn());
                } catch (TokenStreamException e3) {
                    String stringBuffer2 = new StringBuffer().append(new StringBuffer("Parser failure on filter:\n\t").append(str).toString()).append("\nAntlr exception trace:\n").append(e3.getMessage()).toString();
                    init();
                    throw new ParseException(stringBuffer2, 0);
                }
            }
        }
        return null;
    }

    @Override // org.apache.ldap.common.filter.FilterParser
    public void setFilterParserMonitor(FilterParserMonitor filterParserMonitor) {
        this.parser.setFilterParserMonitor(filterParserMonitor);
        this.valueParser.setFilterParserMonitor(filterParserMonitor);
    }
}
