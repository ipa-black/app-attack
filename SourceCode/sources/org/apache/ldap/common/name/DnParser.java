package org.apache.ldap.common.name;

import antlr.RecognitionException;
import antlr.TokenStreamException;
import antlr.TokenStreamSelector;
import java.io.IOException;
import java.io.PipedOutputStream;
import javax.naming.Name;
import javax.naming.NameParser;
import javax.naming.NamingException;
import org.apache.ldap.common.exception.LdapInvalidNameException;
import org.apache.ldap.common.exception.LdapNamingException;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.util.ExceptionUtils;
import org.apache.ldap.common.util.NestableRuntimeException;
import org.apache.ldap.common.util.ParserPipedInputStream;
/* loaded from: classes3.dex */
public class DnParser implements NameParser {
    private final boolean m_isNormalizing;
    private antlrNameParser m_parser;
    private PipedOutputStream m_parserIn;
    private TokenStreamSelector m_selector;

    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Throwable, org.apache.ldap.common.exception.LdapNamingException] */
    public DnParser() throws NamingException {
        this.m_isNormalizing = false;
        try {
            init();
        } catch (IOException e2) {
            ?? ldapNamingException = new LdapNamingException(new StringBuffer("failed while initializing a name parser:\n").append(ExceptionUtils.getStackTrace(e2)).toString(), ResultCodeEnum.OTHER);
            ldapNamingException.setRootCause(e2);
            throw ldapNamingException;
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Throwable, org.apache.ldap.common.exception.LdapNamingException] */
    public DnParser(NameComponentNormalizer nameComponentNormalizer) throws NamingException {
        try {
            init();
            this.m_isNormalizing = true;
            this.m_parser.setNormalizer(nameComponentNormalizer);
        } catch (IOException e2) {
            ?? ldapNamingException = new LdapNamingException(new StringBuffer("failed while initializing a name parser:\n").append(ExceptionUtils.getStackTrace(e2)).toString(), ResultCodeEnum.OTHER);
            ldapNamingException.setRootCause(e2);
            throw ldapNamingException;
        }
    }

    public boolean isNormizing() {
        return this.m_isNormalizing;
    }

    private void init() throws IOException {
        this.m_parserIn = new PipedOutputStream();
        this.m_selector = new TokenStreamSelector();
        ParserPipedInputStream parserPipedInputStream = new ParserPipedInputStream();
        this.m_parserIn.connect(parserPipedInputStream);
        antlrTypeLexer antlrtypelexer = new antlrTypeLexer(parserPipedInputStream);
        this.m_selector.addInputStream(antlrtypelexer, antlrTypeLexer.LEXER_KEY);
        antlrValueLexer antlrvaluelexer = new antlrValueLexer(antlrtypelexer.getInputState());
        this.m_selector.addInputStream(antlrvaluelexer, antlrValueLexer.LEXER_KEY);
        antlrtypelexer.setSelector(this.m_selector);
        antlrvaluelexer.setSelector(this.m_selector);
        this.m_selector.select(antlrTypeLexer.LEXER_KEY);
        this.m_parser = new antlrNameParser(this.m_selector);
    }

    public Name parse(String str, LdapName ldapName) throws NamingException {
        if (str == null || str.trim().equals("")) {
            return ldapName == null ? new LdapName() : ldapName;
        }
        try {
            synchronized (this.m_parserIn) {
                this.m_parserIn.write(str.getBytes());
                this.m_parserIn.write(35);
                this.m_parserIn.write(10);
                this.m_parserIn.flush();
                if (ldapName == null) {
                    ldapName = new LdapName(this.m_parser.name());
                } else {
                    ldapName.setList(this.m_parser.name());
                }
            }
            return ldapName;
        } catch (RecognitionException e2) {
            String stringBuffer = new StringBuffer().append(new StringBuffer("Parser failure on name:\n\t").append(str).toString()).append("\nAntlr exception trace:\n").append(ExceptionUtils.getFullStackTrace(e2)).toString();
            try {
                init();
                throw new LdapInvalidNameException(stringBuffer, ResultCodeEnum.INVALIDDNSYNTAX);
            } catch (IOException unused) {
                throw new LdapNamingException("Failed to reinitialize dn parser", ResultCodeEnum.OTHER);
            }
        } catch (TokenStreamException e3) {
            String stringBuffer2 = new StringBuffer().append(new StringBuffer("Parser failure on name:\n\t").append(str).toString()).append("\nAntlr exception trace:\n").append(ExceptionUtils.getFullStackTrace(e3)).toString();
            try {
                init();
                throw new LdapInvalidNameException(stringBuffer2, ResultCodeEnum.INVALIDDNSYNTAX);
            } catch (IOException unused2) {
                throw new LdapNamingException("Failed to reinitialize dn parser", ResultCodeEnum.OTHER);
            }
        } catch (IOException e4) {
            String stringBuffer3 = new StringBuffer().append(new StringBuffer("Parser failure on name:\n\t").append(str).toString()).append("\nAntlr exception trace:\n").append(ExceptionUtils.getFullStackTrace(e4)).toString();
            try {
                init();
                throw new LdapNamingException(stringBuffer3, ResultCodeEnum.OTHER);
            } catch (IOException unused3) {
                throw new LdapNamingException("Failed to reinitialize dn parser", ResultCodeEnum.OTHER);
            }
        } catch (NestableRuntimeException e5) {
            NamingException cause = e5.getCause();
            if (cause instanceof NamingException) {
                throw cause;
            }
            throw e5;
        }
    }

    public Name parse(String str) throws NamingException {
        return parse(str, new LdapName());
    }
}
