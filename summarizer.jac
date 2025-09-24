import from byllm.llm { Model }


glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);


def summarize_text(text: str) -> str by llm();

walker Summarizer {
    has text: str;

    
    can start with entry {
        summary = summarize_text(self.text);          
        print("📄 Original: " + self.text);
        print("✂️ Summary: " + summary);
    }
}


with entry:__main__ {
    root spawn Summarizer("Artificial Intelligence is transforming industries by automating tasks, enhancing decision-making, and enabling new innovations.");
}
