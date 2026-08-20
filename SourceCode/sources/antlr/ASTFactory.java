package antlr;

import antlr.collections.AST;
import antlr.collections.impl.ASTArray;
import java.lang.reflect.Constructor;
import java.util.Hashtable;
/* loaded from: classes.dex */
public class ASTFactory {
    static /* synthetic */ Class class$antlr$CommonAST;
    static /* synthetic */ Class class$antlr$Token;
    protected String theASTNodeType = null;
    protected Class theASTNodeTypeClass = null;
    protected Hashtable tokenTypeToASTClassMap = null;

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError(e2.getMessage());
        }
    }

    public ASTFactory() {
    }

    public ASTFactory(Hashtable hashtable) {
        setTokenTypeToASTClassMap(hashtable);
    }

    public void setTokenTypeASTNodeType(int i, String str) throws IllegalArgumentException {
        if (this.tokenTypeToASTClassMap == null) {
            this.tokenTypeToASTClassMap = new Hashtable();
        }
        if (str == null) {
            this.tokenTypeToASTClassMap.remove(new Integer(i));
            return;
        }
        try {
            this.tokenTypeToASTClassMap.put(new Integer(i), Class.forName(str));
        } catch (Exception unused) {
            throw new IllegalArgumentException(new StringBuffer("Invalid class, ").append(str).toString());
        }
    }

    public Class getASTNodeType(int i) {
        Class cls;
        Hashtable hashtable = this.tokenTypeToASTClassMap;
        if (hashtable == null || (cls = (Class) hashtable.get(new Integer(i))) == null) {
            Class cls2 = this.theASTNodeTypeClass;
            if (cls2 != null) {
                return cls2;
            }
            Class cls3 = class$antlr$CommonAST;
            if (cls3 == null) {
                Class class$ = class$("antlr.CommonAST");
                class$antlr$CommonAST = class$;
                return class$;
            }
            return cls3;
        }
        return cls;
    }

    public void addASTChild(ASTPair aSTPair, AST ast) {
        if (ast != null) {
            if (aSTPair.root == null) {
                aSTPair.root = ast;
            } else if (aSTPair.child == null) {
                aSTPair.root.setFirstChild(ast);
            } else {
                aSTPair.child.setNextSibling(ast);
            }
            aSTPair.child = ast;
            aSTPair.advanceChildToEnd();
        }
    }

    public AST create() {
        return create(0);
    }

    public AST create(int i) {
        AST create = create(getASTNodeType(i));
        if (create != null) {
            create.initialize(i, "");
        }
        return create;
    }

    public AST create(int i, String str) {
        AST create = create(i);
        if (create != null) {
            create.initialize(i, str);
        }
        return create;
    }

    public AST create(int i, String str, String str2) {
        AST create = create(str2);
        if (create != null) {
            create.initialize(i, str);
        }
        return create;
    }

    public AST create(AST ast) {
        if (ast == null) {
            return null;
        }
        AST create = create(ast.getType());
        if (create != null) {
            create.initialize(ast);
        }
        return create;
    }

    public AST create(Token token) {
        AST create = create(token.getType());
        if (create != null) {
            create.initialize(token);
        }
        return create;
    }

    public AST create(Token token, String str) {
        AST createUsingCtor = createUsingCtor(token, str);
        if (createUsingCtor != null) {
            createUsingCtor.initialize(token);
        }
        return createUsingCtor;
    }

    protected AST create(String str) {
        try {
            return create(Class.forName(str));
        } catch (Exception unused) {
            throw new IllegalArgumentException(new StringBuffer("Invalid class, ").append(str).toString());
        }
    }

    protected AST createUsingCtor(Token token, String str) {
        try {
            Class<?> cls = Class.forName(str);
            Class<?>[] clsArr = new Class[1];
            Class<?> cls2 = class$antlr$Token;
            if (cls2 == null) {
                cls2 = class$("antlr.Token");
                class$antlr$Token = cls2;
            }
            clsArr[0] = cls2;
            Constructor<?> constructor = cls.getConstructor(clsArr);
            if (constructor != null) {
                return (AST) constructor.newInstance(token);
            }
            return create(cls);
        } catch (Exception unused) {
            throw new IllegalArgumentException(new StringBuffer("Invalid class or can't make instance, ").append(str).toString());
        }
    }

    protected AST create(Class cls) {
        try {
            return (AST) cls.newInstance();
        } catch (Exception unused) {
            error(new StringBuffer("Can't create AST Node ").append(cls.getName()).toString());
            return null;
        }
    }

    public AST dup(AST ast) {
        if (ast == null) {
            return null;
        }
        AST create = create(ast.getClass());
        create.initialize(ast);
        return create;
    }

    public AST dupList(AST ast) {
        AST dupTree = dupTree(ast);
        AST ast2 = dupTree;
        while (ast != null) {
            ast = ast.getNextSibling();
            ast2.setNextSibling(dupTree(ast));
            ast2 = ast2.getNextSibling();
        }
        return dupTree;
    }

    public AST dupTree(AST ast) {
        AST dup = dup(ast);
        if (ast != null) {
            dup.setFirstChild(dupList(ast.getFirstChild()));
        }
        return dup;
    }

    public AST make(AST[] astArr) {
        AST ast = null;
        if (astArr == null || astArr.length == 0) {
            return null;
        }
        AST ast2 = astArr[0];
        if (ast2 != null) {
            ast2.setFirstChild(null);
        }
        for (int i = 1; i < astArr.length; i++) {
            AST ast3 = astArr[i];
            if (ast3 != null) {
                if (ast2 == null) {
                    ast2 = ast3;
                } else if (ast == null) {
                    ast2.setFirstChild(ast3);
                    ast3 = ast2.getFirstChild();
                } else {
                    ast.setNextSibling(ast3);
                    ast3 = ast.getNextSibling();
                }
                while (ast3.getNextSibling() != null) {
                    ast3 = ast3.getNextSibling();
                }
                ast = ast3;
            }
        }
        return ast2;
    }

    public AST make(ASTArray aSTArray) {
        return make(aSTArray.array);
    }

    public void makeASTRoot(ASTPair aSTPair, AST ast) {
        if (ast != null) {
            ast.addChild(aSTPair.root);
            aSTPair.child = aSTPair.root;
            aSTPair.advanceChildToEnd();
            aSTPair.root = ast;
        }
    }

    public void setASTNodeClass(String str) {
        this.theASTNodeType = str;
        try {
            this.theASTNodeTypeClass = Class.forName(str);
        } catch (Exception unused) {
            error(new StringBuffer("Can't find/access AST Node type").append(str).toString());
        }
    }

    public void setASTNodeType(String str) {
        setASTNodeClass(str);
    }

    public Hashtable getTokenTypeToASTClassMap() {
        return this.tokenTypeToASTClassMap;
    }

    public void setTokenTypeToASTClassMap(Hashtable hashtable) {
        this.tokenTypeToASTClassMap = hashtable;
    }

    public void error(String str) {
        System.err.println(str);
    }
}
