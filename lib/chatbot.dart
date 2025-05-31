class Chatbot {
  // Predefined keywords and plain text responses
  static const Map<String, String> _predefinedKeywords = {
    // Greetings
    "hi": "Hello! How can I assist you today?",
    "hello": "Hi there! Need any help?",
    "hey": "Hey! How can I help you?",
    "good morning": "Good morning! Hope you have a productive day!",
    "good afternoon": "Good afternoon! How can I assist you?",
    "good evening": "Good evening! What can I do for you?",
    "how are you": "I'm just a bot, but I'm functioning perfectly! How can I assist you?",
    "what can you do": "I can help you with your queries, just ask me something!",
    "who are you": "I'm your virtual assistant, here to help you out!",
    "help": "Sure, I'm here to help. Please tell me your question.",
    "support": "How can I assist you today?",
    "thanks": "You're welcome!",
    "thank you": "Glad I could help!",
    "bye": "Goodbye! Have a nice day!",
    "goodbye": "See you later! Stay safe!",
    "name": "Nice Name! How can I assist you today?",
    "ok": "Alright! Feel free to ask more about our company or services.",
    "okay": "Alright! Feel free to ask more about our company or services.",

    // About One Aim IT Solutions
    "one aim": "One Aim is a modern IT solutions company that helps businesses grow digitally with services like web development, app development, AI tools, and cloud solutions. We focus on delivering custom, scalable, and innovative technology.\nVisit our website: https://theoneaim.in",
    "oneaim": "One Aim is a modern IT solutions company that helps businesses grow digitally with services like web development, app development, AI tools, and cloud solutions. We focus on delivering custom, scalable, and innovative technology.\nVisit our website: https://theoneaim.in",
    "one aim it solutions": "One Aim is a modern IT solutions company that helps businesses grow digitally with services like web development, app development, AI tools, and cloud solutions. We focus on delivering custom, scalable, and innovative technology.\nVisit our website: https://theoneaim.in",
    "oneaimitsolutions": "One Aim is a modern IT solutions company that helps businesses grow digitally with services like web development, app development, AI tools, and cloud solutions. We focus on delivering custom, scalable, and innovative technology.\nVisit our website: https://theoneaim.in",
    "one aim it solution": "One Aim is a modern IT solutions company that helps businesses grow digitally with services like web development, app development, AI tools, and cloud solutions. We focus on delivering custom, scalable, and innovative technology.\nVisit our website: https://theoneaim.in",
    "company": "We’re One Aim IT Solutions – experts in tech-driven business transformation. We help businesses grow with websites, apps, AI tools, and digital services.\nLearn more at: https://theoneaim.in",
    "organization": "We’re One Aim IT Solutions – experts in tech-driven business transformation. We help businesses grow with websites, apps, AI tools, and digital services.\nLearn more at: https://theoneaim.in",

    // Services
    "services": "Absolutely! ONE AIM provides a wide range of modern IT services designed to drive innovation and growth:\n- Cloud Services\n- Web Development\n- AI/ML\n- Digital Marketing\nDiscover how our services can transform your business: https://theoneaim.in",
    "service": "Absolutely! ONE AIM provides a wide range of modern IT services designed to drive innovation and growth:\n- Cloud Services\n- Web Development\n- AI/ML\n- Digital Marketing\nDiscover how our services can transform your business: https://theoneaim.in",

    // Cloud Services
    "cloud services": "☁️ Cloud Services\nWe help businesses scale with secure, cost-effective cloud solutions:\n- Cloud Migration\n- DevOps & Automation\n- Infrastructure Management\n- Cloud Security\nExplore: https://theoneaim.in/cloud-services",
    "cloud service": "☁️ Cloud Services\nWe help businesses scale with secure, cost-effective cloud solutions:\n- Cloud Migration\n- DevOps & Automation\n- Infrastructure Management\n- Cloud Security\nExplore: https://theoneaim.in/cloud-services",
    "cloud": "☁️ Cloud Services\nWe help businesses scale with secure, cost-effective cloud solutions:\n- Cloud Migration\n- DevOps & Automation\n- Infrastructure Management\n- Cloud Security\nExplore: https://theoneaim.in/cloud-services",
    "aws cloud": "☁️ Cloud Services\nWe help businesses scale with secure, cost-effective cloud solutions:\n- Cloud Migration\n- DevOps & Automation\n- Infrastructure Management\n- Cloud Security\nExplore: https://theoneaim.in/cloud-services",

    // Web Development
    "web development": "💻 Web Development\nONE AIM builds high-performance, scalable websites and platforms tailored to your business needs:\n- Responsive Web Applications\n- Custom Web Solutions\n- UI/UX Design\n- E-Commerce Development\n- API Integration & Backend Services\nExplore: https://theoneaim.in/development-services",
    "web dev": "💻 Web Development\nONE AIM builds high-performance, scalable websites and platforms tailored to your business needs:\n- Responsive Web Applications\n- Custom Web Solutions\n- UI/UX Design\n- E-Commerce Development\n- API Integration & Backend Services\nExplore: https://theoneaim.in/development-services",
    "website": "💻 Web Development\nONE AIM builds high-performance, scalable websites and platforms tailored to your business needs:\n- Responsive Web Applications\n- Custom Web Solutions\n- UI/UX Design\n- E-Commerce Development\n- API Integration & Backend Services\nExplore: https://theoneaim.in/development-services",
    "web application": "💻 Web Development\nONE AIM builds high-performance, scalable websites and platforms tailored to your business needs:\n- Responsive Web Applications\n- Custom Web Solutions\n- UI/UX Design\n- E-Commerce Development\n- API Integration & Backend Services\nExplore: https://theoneaim.in/development-services",
    "web": "💻 Web Development\nONE AIM builds high-performance, scalable websites and platforms tailored to your business needs:\n- Responsive Web Applications\n- Custom Web Solutions\n- UI/UX Design\n- E-Commerce Development\n- API Integration & Backend Services\nExplore: https://theoneaim.in/development-services",

    // AI/ML Services
    "ai/ml": "🤖 AI/ML Services\nONE AIM delivers intelligent, data-driven solutions that enhance automation, decision-making, and customer experience:\n- AI Consultation\n- ML Model Development\n- Data Engineering & Preprocessing\n- Predictive Analytics & Business Intelligence\n- AI Chatbots & Virtual Assistants\n- Workflow Automation & Smart Integration\nExplore: https://theoneaim.in/ai-ml-services",
    "ai": "🤖 AI/ML Services\nONE AIM delivers intelligent, data-driven solutions that enhance automation, decision-making, and customer experience:\n- AI Consultation\n- ML Model Development\n- Data Engineering & Preprocessing\n- Predictive Analytics & Business Intelligence\n- AI Chatbots & Virtual Assistants\n- Workflow Automation & Smart Integration\nExplore: https://theoneaim.in/ai-ml-services",
    "ml": "🤖 AI/ML Services\nONE AIM delivers intelligent, data-driven solutions that enhance automation, decision-making, and customer experience:\n- AI Consultation\n- ML Model Development\n- Data Engineering & Preprocessing\n- Predictive Analytics & Business Intelligence\n- AI Chatbots & Virtual Assistants\n- Workflow Automation & Smart Integration\nExplore: https://theoneaim.in/ai-ml-services",
    "ai and ml": "🤖 AI/ML Services\nONE AIM delivers intelligent, data-driven solutions that enhance automation, decision-making, and customer experience:\n- AI Consultation\n- ML Model Development\n- Data Engineering & Preprocessing\n- Predictive Analytics & Business Intelligence\n- AI Chatbots & Virtual Assistants\n- Workflow Automation & Smart Integration\nExplore: https://theoneaim.in/ai-ml-services",
    "ai & ml": "🤖 AI/ML Services\nONE AIM delivers intelligent, data-driven solutions that enhance automation, decision-making, and customer experience:\n- AI Consultation\n- ML Model Development\n- Data Engineering & Preprocessing\n- Predictive Analytics & Business Intelligence\n- AI Chatbots & Virtual Assistants\n- Workflow Automation & Smart Integration\nExplore: https://theoneaim.in/ai-ml-services",
    "automation": "🤖 AI/ML Services\nONE AIM delivers intelligent, data-driven solutions that enhance automation, decision-making, and customer experience:\n- AI Consultation\n- ML Model Development\n- Data Engineering & Preprocessing\n- Predictive Analytics & Business Intelligence\n- AI Chatbots & Virtual Assistants\n- Workflow Automation & Smart Integration\nExplore: https://theoneaim.in/ai-ml-services",
    "machine learning": "🤖 AI/ML Services\nONE AIM delivers intelligent, data-driven solutions that enhance automation, decision-making, and customer experience:\n- AI Consultation\n- ML Model Development\n- Data Engineering & Preprocessing\n- Predictive Analytics & Business Intelligence\n- AI Chatbots & Virtual Assistants\n- Workflow Automation & Smart Integration\nExplore: https://theoneaim.in/ai-ml-services",

    // Digital Marketing
    "digital marketing": "📈 Digital Marketing\nGrow your brand online with ONE AIM's data-driven digital marketing strategies that maximize reach, engagement, and ROI:\n- SEO Optimization (On-page & Off-page)\n- Social Media Marketing (Instagram, Facebook, LinkedIn)\n- Performance Campaigns (Google Ads, Meta Ads)\n- Content Strategy & Blogging\n- Email Marketing & Lead Nurturing\n- Analytics & Conversion Tracking\nExplore: https://theoneaim.in/digital-marketing",
    "digital": "📈 Digital Marketing\nGrow your brand online with ONE AIM's data-driven digital marketing strategies that maximize reach, engagement, and ROI:\n- SEO Optimization (On-page & Off-page)\n- Social Media Marketing (Instagram, Facebook, LinkedIn)\n- Performance Campaigns (Google Ads, Meta Ads)\n- Content Strategy & Blogging\n- Email Marketing & Lead Nurturing\n- Analytics & Conversion Tracking\nExplore: https://theoneaim.in/digital-marketing",

    // About Us
    "know more": "🏢 Know more about our organization\nWe’d love to connect with you on social media! Find us on:\n- LinkedIn: https://www.linkedin.com/company/oneaim-it-solutions/posts/?feedView=all\n- Instagram: https://www.instagram.com/oneaimitsolutions/\n- Facebook: https://www.facebook.com/profile.php?id=61575261976224\n- YouTube: https://www.youtube.com/@OneAimITSolutions",
    "social media": "🏢 Know more about our organization\nWe’d love to connect with you on social media! Find us on:\n- LinkedIn: https://www.linkedin.com/company/oneaim-it-solutions/posts/?feedView=all\n- Instagram: https://www.instagram.com/oneaimitsolutions/\n- Facebook: https://www.facebook.com/profile.php?id=61575261976224\n- YouTube: https://www.youtube.com/@OneAimITSolutions",
    "instagram": "🏢 Know more about our organization\nWe’d love to connect with you on social media! Find us on:\n- LinkedIn: https://www.linkedin.com/company/oneaim-it-solutions/posts/?feedView=all\n- Instagram: https://www.instagram.com/oneaimitsolutions/\n- Facebook: https://www.facebook.com/profile.php?id=61575261976224\n- YouTube: https://www.youtube.com/@OneAimITSolutions",
    "youtube": "🏢 Know more about our organization\nWe’d love to connect with you on social media! Find us on:\n- LinkedIn: https://www.linkedin.com/company/oneaim-it-solutions/posts/?feedView=all\n- Instagram: https://www.instagram.com/oneaimitsolutions/\n- Facebook: https://www.facebook.com/profile.php?id=61575261976224\n- YouTube: https://www.youtube.com/@OneAimITSolutions",
    "facebook": "🏢 Know more about our organization\nWe’d love to connect with you on social media! Find us on:\n- LinkedIn: https://www.linkedin.com/company/oneaim-it-solutions/posts/?feedView=all\n- Instagram: https://www.instagram.com/oneaimitsolutions/\n- Facebook: https://www.facebook.com/profile.php?id=61575261976224\n- YouTube: https://www.youtube.com/@OneAimITSolutions",
    "linkedin": "🏢 Know more about our organization\nWe’d love to connect with you on social media! Find us on:\n- LinkedIn: https://www.linkedin.com/company/oneaim-it-solutions/posts/?feedView=all\n- Instagram: https://www.instagram.com/oneaimitsolutions/\n- Facebook: https://www.facebook.com/profile.php?id=61575261976224\n- YouTube: https://www.youtube.com/@OneAimITSolutions",

    // Industries
    "industries": "🌐 Industries We Are In\nWe provide industry-specific technology solutions:\n- Automobile: https://theoneaim.in/automobile\n- Telecommunications: https://theoneaim.in/telecommunication\n- Healthcare: https://theoneaim.in/healthcare\n- E-Commerce: https://theoneaim.in/e-commerce\n- Finance & Banking: https://theoneaim.in/finance-&-banking\n- Education: https://theoneaim.in/education\n- Government & Defense: https://theoneaim.in/government-&-defense",
    "industry": "🌐 Industries We Are In\nWe provide industry-specific technology solutions:\n- Automobile: https://theoneaim.in/automobile\n- Telecommunications: https://theoneaim.in/telecommunication\n- Healthcare: https://theoneaim.in/healthcare\n- E-Commerce: https://theoneaim.in/e-commerce\n- Finance & Banking: https://theoneaim.in/finance-&-banking\n- Education: https://theoneaim.in/education\n- Government & Defense: https://theoneaim.in/government-&-defense",

    // Location
    "address": "📍 Office Address:\nOffice No-123, Omega\nAnukampa, Near Sanskrit College\nBhankrota, Jaipur, India\nWe also serve clients across the globe!",
    "located": "📍 Office Address:\nOffice No-123, Omega\nAnukampa, Near Sanskrit College\nBhankrota, Jaipur, India\nWe also serve clients across the globe!",
    "location": "📍 Office Address:\nOffice No-123, Omega\nAnukampa, Near Sanskrit College\nBhankrota, Jaipur, India\nWe also serve clients across the globe!",
    "map": "📍 Office Address:\nOffice No-123, Omega\nAnukampa, Near Sanskrit College\nBhankrota, Jaipur, India\nWe also serve clients across the globe!",
    "rasta": "📍 Office Address:\nOffice No-123, Omega\nAnukampa, Near Sanskrit College\nBhankrota, Jaipur, India\nWe also serve clients across the globe!",

    // Contact
    "call": "You can contact us through the following ways:\n📞 Phone:\n    +91 89552 49714\n    +91 74269 95879\n    +1 (925) 389-4120\n✉️ Email:\n    info@theoneaim.co.in\n🌐 Website:\n    https://theoneaim.in/contact\nWe’re here to help you anytime!",
    "contact": "You can contact us through the following ways:\n📞 Phone:\n    +91 89552 49714\n    +91 74269 95879\n    +1 (925) 389-4120\n✉️ Email:\n    info@theoneaim.co.in\n🌐 Website:\n    https://theoneaim.in/contact\nWe’re here to help you anytime!",
    "connect": "You can contact us through the following ways:\n📞 Phone:\n    +91 89552 49714\n    +91 74269 95879\n    +1 (925) 389-4120\n✉️ Email:\n    info@theoneaim.co.in\n🌐 Website:\n    https://theoneaim.in/contact\nWe’re here to help you anytime!",
    "calling": "You can contact us through the following ways:\n📞 Phone:\n    +91 89552 49714\n    +91 74269 95879\n    +1 (925) 389-4120\n✉️ Email:\n    info@theoneaim.co.in\n🌐 Website:\n    https://theoneaim.in/contact\nWe’re here to help you anytime!",
  };

  String getResponse(String userMessage) {
    // Convert user message to lowercase
    final userMessageLower = userMessage.toLowerCase();

    // Sort keywords by length (descending) to prioritize specific matches
    final sortedKeywords = _predefinedKeywords.entries.toList()
      ..sort((a, b) => b.key.length.compareTo(a.key.length));

    // Find the first matching keyword
    for (final entry in sortedKeywords) {
      if (userMessageLower.contains(entry.key.toLowerCase())) {
        return entry.value;
      }
    }

    // Fallback response
    return "Thanks for your question! We provide real-time information about One Aim IT Solutions—our services, solutions, and company updates. For other queries, please contact our team: https://theoneaim.in/contact";
  }
}
